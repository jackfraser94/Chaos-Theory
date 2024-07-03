function driven_vdp()
    % Parameters
    mu = 1;  % Nonlinearity parameter
    A = 1;  % Amplitude of the driving force
    omega = 1;  % Frequency of the driving force
    tspan = [0 100];  % Time span for the simulation
    y0 = [1; 0];  % Initial conditions [x(0), x'(0)]
    
    % Solve the differential equations
    [t, y] = ode45(@(t, y) vdp(t, y, mu, A, omega), tspan, y0);
    
    % Plot the results
    figure;
    subplot(2, 1, 1);
    plot(t, y(:, 1));
    title('Driven Van der Pol Oscillator');
    xlabel('Time');
    ylabel('x(t)');
    
    subplot(2, 1, 2);
    plot(y(:, 1), y(:, 2));
    title('Phase Portrait');
    xlabel('x(t)');
    ylabel('dx/dt');
end

function dydt = vdp(t, y, mu, A, omega)
    % Differential equations for the driven Van der Pol oscillator
    dydt = zeros(2, 1);
    dydt(1) = y(2);
    dydt(2) = mu * (1 - y(1)^2) * y(2) - y(1) + A * cos(omega * t);
end
