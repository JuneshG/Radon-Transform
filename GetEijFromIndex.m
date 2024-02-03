function ek = GetEijFromIndex(k,m)
[i,j] = ind2sub([m,m],k);
ek = GetEij(i,j,m);

end