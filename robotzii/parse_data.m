function [x, y] = parse_data(filename)
    % this function reads two column vector from a specified file
    fid = fopen(filename, 'r');
    n = fscanf(fid, '%d', 1);
    % reading x vector values
    x = fscanf(fid, '%d', n + 1);
    % reding y vector values
    y = fscanf(fid, '%d', n + 1);
    fclose(fid);
    x = x(:);
    y = y(:);
endfunction