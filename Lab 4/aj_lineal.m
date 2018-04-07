function coef = aj_lineal(xd,yd)
  m = length(xd);  #se extrae todo de derivar parcialmente la funcion error
  p = sum(xd.^2);
  q = sum(xd);
  r = sum(xd.*yd);
  s = sum(yd);
  coef(2) = (s*p-q*r)/(m*p-q*q);
  coef(1) = (r-q*coef(2))/p;
endfunction