function[skew,gamma3,kurt,gamma4,mn]=func_skew_kurt_calc(Y)
[m,n] = size(Y);
 mn = m*n;
 mean = sum(Y(:)); 
 mean = mean/mn;
 Z = Y - mean;
 var = sum(Z(:).^2); var = var/(mn-1);
 skew = sum(Z(:).^3); skew = skew/mn;
 kurt = sum(Z(:).^4); kurt = kurt/mn;
  sigma = sqrt(var);
   gamma3 = skew/sigma^3;
   gamma4  =kurt/var^2 - 3;
    






