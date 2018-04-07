function p = horn(coef,x)
  p = coef(1);
  coef2 = coef(2:length(coef));
  for a = coef2
    p = p*x + a;
  end
endfunction