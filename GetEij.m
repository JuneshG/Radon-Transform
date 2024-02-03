function eij = GetEij(i, j, m)
    delta_x = 2 / m;

    % Define the boundaries for Xi,j
    x_min = -1 + (i - 1) * delta_x;
    x_max = -1 + i * delta_x;
    y_min = -1 + (j - 1) * delta_x;
    y_max = -1 + j * delta_x;

    % Define the function e_ij
    %eij = @(x, y) (m / 2) * (all([x > x_min, x <= x_max, y > y_min, y <= y_max]));
    eij = @(x) (m / 2) * (all(x(:, 1) > x_min) && all(x(:, 1) <= x_max) && all(x(:, 2) > y_min) && all(x(:, 2) <= y_max));

end
