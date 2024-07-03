function lorenzattractor()
    % Parameters
    sigma = 10;
    rho = 28;
    beta = 8/3;
    dt = 0.01;
    numSteps = 10000;

    % Initial conditions
    x = 1;
    y = 1;
    z = 1;

    % Initialize arrays to store results
    X = zeros(numSteps, 1);
    Y = zeros(numSteps, 1);
    Z = zeros(numSteps, 1);

    % Euler method to solve the Lorenz equations
    for i = 1:numSteps
        dx = sigma * (y - x) * dt;
        dy = (x * (rho - z) - y) * dt;
        dz = (x * y - beta * z) * dt;
        
        x = x + dx;
        y = y + dy;
        z = z + dz;
        
        X(i) = x;
        Y(i) = y;
        Z(i) = z;
    end

    % Plot results
    plot3(X, Y, Z);
    title('Lorenz Attractor');
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
end
