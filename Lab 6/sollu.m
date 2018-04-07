function x = sollu(A,b)
  [L U P] = lu(A);
  y = soltrinf(L,(P*b.').'); #b tiene que multiplicarse como vector columna
  x = soltrsup(U,y);         #y tiene que devolverse de soltrinf como v. fila
endfunction