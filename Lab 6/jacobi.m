function [x,k] = jacobi(A,b,tol,m)
  inc = size(A,2);           #cantidad de incognitas
  ec = min(size(A,1),inc);
  x0 = ones(1,inc);          #aprox. inicial (si hay convergencia da igual)
  e = max_num;               #del lab 1
  k = 0;
  while (k < m && tol < e)
    x = x0;
    for j = 1:ec   #para que funcione con cualquier tamaño de matriz
      fj = [A(j,1:j-1) A(j,j+1:inc)];  #toda la fila de A excepto el elem. j
      xj = [x0(1:j-1) x0(j+1:inc)];    #todo el vector x0 expecto x(j)
      x(j) = (b(j) - sum(fj.*xj))/A(j,j);
    endfor
    e = sum(abs(x-x0));      #maxima suma por filas (una sola fila)
    x0 = x;
    k++;
  endwhile
endfunction