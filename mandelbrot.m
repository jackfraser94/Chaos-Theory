function mandelbrot()
    % Parameters for the Mandelbrot set
    max_iter = 1000;  % Maximum number of iterations
    x_min = -2.5; x_max = 1.5;  % x-axis range
    y_min = -2; y_max = 2;  % y-axis range
    resolution = 1000;  % Resolution of the plot

    % Create a grid of complex numbers
    x = linspace(x_min, x_max, resolution);
    y = linspace(y_min, y_max, resolution);
    [X, Y] = meshgrid(x, y);
    C = X + 1i*Y;

    % Initialize the Z matrix and the iteration count matrix
    Z = zeros(size(C));
    count = zeros(size(C));

    % Iterate to determine Mandelbrot set membership
    for n = 1:max_iter
        Z = Z.^2 + C;
        inside = abs(Z) <= 2;
        count = count + inside;
    end

    % Plot the Mandelbrot set
    figure;
    imagesc(x, y, count);
    colormap([jet(); flipud(jet()); 0 0 0]);  % Color map
    axis off;
    title('Mandelbrot Set');
    xlabel('Real Axis');
    ylabel('Imaginary Axis');
end
