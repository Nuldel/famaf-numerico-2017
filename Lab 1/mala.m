function X = mala(a,b,c)
  disc = b^2-4*a*c;                    #discriminante
  if (disc < 0)
    disp("Raices complejas!");
  end
  den = 2*a;
  x1 = (-b-sqrt(disc))/den
  x2 = (-b+sqrt(disc))/den
  X = [x1 x2];
endfunction