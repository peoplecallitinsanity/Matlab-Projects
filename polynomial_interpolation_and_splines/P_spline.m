function y_interp = P_spline(coef, x, x_interp)
    % this function computes y_interp for previous determined coefficients
    n = length(x) - 1;
    y_interp = zeros(size(x_interp));

    % differences
    diff1 = diff(x);
    diff2 = diff1.^2;
    diff3 = diff1.^3;

    % range_x is for tracking which interval each x_interp is in
    range_x = zeros(size(x_interp));
    for j = 1:length(x_interp)
        % using binary search for finding interval
        low = 1;
        high = n;
        while low < high
            mid = floor((low + high) / 2);
            if x(mid+1) < x_interp(j)
                low = mid + 1;
            else
                high = mid;
            endif
        endwhile
        range_x(j) = low;
    endfor

    % computing spline polynomial for each x_interp
    for i = 1:n
        index_found = find(range_x == i);
        a = coef(4*(i-1)+1);
        b = coef(4*(i-1)+2);
        c = coef(4*(i-1)+3);
        d = coef(4*(i-1)+4);

        x_diff = x_interp(index_found) - x(i);
        y_interp(index_found) = a + b * x_diff + c * x_diff.^2 + d * x_diff.^3;
    endfor
endfunction
