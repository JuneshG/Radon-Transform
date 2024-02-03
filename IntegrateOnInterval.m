function function_val = IntegrateOnInterval(f, a, b, n)
    % Calculate the step size
    h = (b - a) / (n-1);
    
    % Initialize the sum
    sum_val = 0;
    
    % Evaluate the function at each point and sum the values
    for i = 1:(n)
        x = a + (i-1) * h;
        sum_val = sum_val + f(x);
    end
    % Apply the trapezoidal rule formula
    function_val = (h/2) * (f(a) + 2*sum_val + f(b));
end