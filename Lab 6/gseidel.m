function [x,k] = gseidel(A,b,tol,m)
  inc = size(A,2);
  ec = min(size(A,1),inc);
  x0 = ones(1,inc);
  e = max_num;
  k = 0;
  while (k < m && tol < e)
    x = x0;
    for j = 1:ec
      fj = [A(j,1:j-1) A(j,j+1:inc)];
      xj = [x(1:j-1) x(j+1:inc)];      #unica diferencia con Jacobi
      x(j) = (b(j) - sum(fj.*xj))/A(j,j);
    endfor
    e = sum(abs(x-x0));
    x0 = x;
    k++;
  endwhile
endfunction