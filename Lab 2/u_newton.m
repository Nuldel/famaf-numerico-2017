function y = u_newton(x)
  global b;
  b = x;
  y = rnewton(@fun_ej7b,1,1e-5,100);
endfunction