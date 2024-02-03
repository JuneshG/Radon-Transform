
function handle = ParameterizePathAtRadiusAndAngle(r, theta)
    
    % Define the parameterization function
    gamma = @(t) [r*cos(theta)-t*sin(theta), r*sin(theta)+t*cos(theta)]
    % Calculate the magnitude of the derivative

    magnitude = 1;
 
    % Return the unit-speed parameterization function handle
    handle = @(t) gamma(t) * magnitude;
end
