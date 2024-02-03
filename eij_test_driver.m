%% Here are parameters that you can play with to test your code
m = 5;
x0 = -1;
x1 = 1;

i = 2;
j = 3;

%% Don't touch the code in this section

assert(i <= m);
assert(j <= m);

Xs = linspace(x0,x1,m+1);
Ys = linspace(x0,x1,m+1);

nx = 100;
ny = nx;


xxs = linspace(-1.5,1.5,nx);
yys = linspace(-1.5,1.5,ny);
[XXs, YYs] = meshgrid(xxs,yys);

e_ij = GetEij(i,j,m);
F = zeros(nx,ny);

for i1 = 1:nx
    for j1 = 1:ny
        F(i1,j1) = e_ij([xxs(i1),yys(j1)]);
    end
end

single_eij_handle = figure(2);
clf; hold all;
imagesc(xxs,yys,F);
colorbar;
caxis([-2,2]);
for i1 = 1:m+1
    plot([x0,x1],[Ys(i1),Ys(i1)],'k','Linewidth',2);
    plot([Xs(i1),Xs(i1)],[x0,x1],'k','Linewidth',2);
end
pbaspect([1,1,1]);
xlim([-1.5,1.5]);
ylim([-1.5,1.5]);
s = sprintf('Surface plot of e_{%2u,%2u} when m = %3u',i,j,m);
title(s);


%ResizeFiguresForRow([single_eij_handle],1);