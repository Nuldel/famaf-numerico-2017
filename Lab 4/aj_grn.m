function coef = aj_grn(f,I,m,n)
  x = linspace(I(1),I(2),m);
  for i = 1:m
    y(i) = f(x(i));
  end
  coef = polyfit(x,y,n);
  aprox = polyval(coef,x);
  e = sum((aprox-y).^2);
  disp("Error total del ajuste:");
  disp(e);
  disp("Dibujitos!");
  plot(x,y,"g;Original;",x,aprox,"b;Aproximacion;");
endfunction