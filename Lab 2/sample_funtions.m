#script

global a b;
a = 84.1256;

function y = fun_ej2a(x)
  y = 2.*x - tan(x);
endfunction

function y = fun_ej2b(x)
  y = x.^2 - 3;
endfunction

function y = fun_ej4(x)
  global a;
  y(1) = x.^3 - a;
  y(2) = 3 .* x.^2;
endfunction

function z = fun_ej7a(y)
  global b;
  z = y - 1/e^((1-b*y)^2);
endfunction

function z = fun_ej7b(y)
  global b;
  z(1) = y - 1/e^((1-b*y)^2);
  z(2) = 1 + 2*b*(b*y - 1)/e^((1-b*y)^2);
endfunction

function z = fun_ej7c(y)
  global b;
  z = 1/e^((1-b*y)^2);
endfunction