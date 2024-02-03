function out = RadonTransform(f,n_r,n_theta,k)
r = sqrt(2);
Rs = linspace(-r,r,n_r);
thetas = linspace(0,pi,n_theta + 1);
thetas = thetas(1:n_theta);

out = zeros(n_r,n_theta);

for i = 1:n_r
    for j = 1:n_theta
        out(i,j) = RadonTransformAtPoint(f,Rs(i),thetas(j),k);
    end
end
out = out(:);

end