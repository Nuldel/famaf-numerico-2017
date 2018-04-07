function X = buena(a,b,c)
  disc = b^2-4*a*c;                    #discriminante
  if (disc < 0)
    disp("Raices complejas!");
  end
  den1 = 2*a;
  if (b >= 0)
    x1 = -b-sqrt(disc);
    den2 = den1*x1;
    x1 = x1/den1
    x2 = (4*a*c)/den2
  else
    x1 = -b+sqrt(disc);
    den2 = den1*x1;
    x1 = x1/den1
    x2 = (4*a*c)/den2
  end
  X = [x1 x2];
endfunction