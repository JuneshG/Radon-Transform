function innerProduct = calculateInnerProduct(A, B)
    % Check if the matrices have the same dimensions
    [m1, n1] = size(A);
    [m2, n2] = size(B);
    
    if m1 ~= m2 || n1 ~= n2
        error('Matrices must have the same dimensions for inner product calculation.');
    end

    % Compute the Frobenius inner product
    innerProduct = sum(sum(A .* B));
end
