#uso como script para poder correr ambas funciones
1;
function V = expon5(x)
  for n = 1:5
    V(n) = expon(x,n);
  end
endfunction

function y = expon(x,n)
  y = 1;
  while (n > 0)
    y = y*x;
    n--;
  end
endfunction