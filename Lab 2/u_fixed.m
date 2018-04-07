function y = u_fixed(x)
  global b;
  b = x;
  y = ripf(@fun_ej7c,1,1e-5,100);
endfunction