function logisticmap()
    % Parameters
    r_values = linspace(2.5, 4.0, 1000);  % Range of r values
    num_iterations = 1000;  % Number of iterations
    last = 100;  % Number of iterations to display
    
    % Initialize array to store results
    x = 0.5 * ones(length(r_values), 1);
    results = zeros(length(r_values), last);
    
    % Logistic map iteration
    for i = 1:num_iterations
        x = r_values' .* x .* (1 - x);
        if i > (num_iterations - last)
            results(:, i - (num_iterations - last)) = x;
        end
    end
    
    % Plot results
    plot(r_values, results, '.k', 'MarkerSize', 0.5);
    title('Bifurcation diagram of the Logistic Map');
    xlabel('r');
    ylabel('x');
end
