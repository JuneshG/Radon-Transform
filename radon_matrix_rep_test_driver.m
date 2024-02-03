%% Here are some parameters that you can play with
n_r = 15;
n_theta = 10;
n = 7;
k = 100;

%% Don't touch this code

i2s_for_v = @(i) ind2sub([n,n],i);

ind2v = @(i) GetEijFromIndex(i,n);

V = eye(n^2,n^2)*(n);
W = eye(n_r*n_theta,n_r*n_theta)*sqrt(n_r*n_theta);

rt = @(f) RadonTransform(f,n_r,n_theta,k);

M = ComputeMatrixRepresentation(rt, ind2v, n^2, @(i) W(:,i),n_r*n_theta,@(x,y)x'*y);


%% Plot

figure(1);
clf;
spy(M);
title('Non-zero coefficients in the matrix representation of R');
