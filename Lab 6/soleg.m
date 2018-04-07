function x = soleg(A,b)
  if (size(b,1) ~= 1 || size(A,1) ~= size(b,2))
    error("Sistema matricial invalido");
  else
    [U y] = egauss(A,b);
    x = soltrsup(U,y);
  endif
endfunction