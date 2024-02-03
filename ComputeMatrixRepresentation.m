function matrix_rep = ComputeMatrixRepresentation(T,IndexToVi,n,IndexToWj,m,inner_prod)
% Computes the matrix representation of map T using bases specified by V
% and W. W must be an orthogonal basis w.r.t. the euclidian inner product.
% [~,n] = size(V);
% [~,m] = size(W);

matrix_rep = zeros(m,n);

for i = 1:n
    out = T(IndexToVi(i));
    for j = 1:m
        matrix_rep(j,i) = inner_prod(IndexToWj(j),out);
    end
end

end