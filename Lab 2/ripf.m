function R = ripf(f,x0,e,m)
  y0 = f(x0);
  if (y0 == x0)
    disp("Lucky Guess!");
    R = x0;
  else
    disp("Computando...");
    xk = x0;
    yk = y0;
    H = xk;
    i = 1;
    while (i <= m && abs(yk-xk) >= e)
      xk = yk;
      yk = f(xk);
      i++;
      H(i,1) = xk;
    end
    disp(H);
    disp("MEJOR APROXIMACION CON LAS CONDICIONES DADAS");
    if (abs(yk-xk) >= e)
      disp("Elija un mejor punto o un mayor numero de iteraciones");
    end
    R = xk;
  end
endfunction