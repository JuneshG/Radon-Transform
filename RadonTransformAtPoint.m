function out = RadonTransformAtPoint(f, r, theta, k)
    % Define the parameterization function
    gamma = ParameterizePathAtRadiusAndAngle(r,theta);
    % Create equally spaced points for trapezoidal quadrature
    out = IntegrateOnInterval(@(t) f(gamma(t)), -sqrt(2), sqrt(2), k);    
end