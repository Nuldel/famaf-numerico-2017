function X = buena2(a, b, c)         #una forma alternativa del ej. de Baskara
  disc = b^2 - 4*a*c;
  if (disc < 0)
    disp("Raices complejas!");
  end
  den = 2*a;
  if (b == 0)
    x1 = sqrt(disc)/den
    x2 = -x1
  else
    x1 = (-b - sign(b)*sqrt(disc))/den
    x2 = c/(a*x1)
  end
  X = [x1,x2];
endfunction