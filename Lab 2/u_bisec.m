function y = u_bisec(x)
  global b;
  b = x;
  y = rbisec(@fun_ej7a,[0 1.5],1e-5,100);
endfunction