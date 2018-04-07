function lab3_ej4(n)
  x = linspace(-1,1,200);
  y = runge(x);
  xi = linspace(-1,1,n+1);
  yi = runge(xi);
  p = ilagrange(xi,yi,x);
  plot(x,y,x,p);
endfunction
  
function y = runge(x)  #funcion con nombre en matematica
  y = 1 ./ (25 .* x.^2);
endfunction