function y = max_num
  max_exp = 0;  #maximo exponente
  y = 2;
  while (!isinf(y))
    max_exp++;
    y = 2*y;
  end
  y = 2^max_exp;  #máxima potencia de 2
  for i = 0:max_exp-1
    y = y + 2^i;
  end
endfunction
