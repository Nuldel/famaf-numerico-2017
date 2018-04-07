function R = rnewton(fun,x0,e,m)
  y0 = fun(x0);  #y0(1) = f(x0); y0(2) = f'(x0)
  if (y0(1) == 0)
    disp("Lucky Guess!");
    R = x0;
  else
    disp("Computando...");
    H = [x0 y0(1)];
    xk = x0;
    yk = y0;
    ek = e;
    i = 1;
    while (i <= m && abs(yk(1)) >= e && ek >= e && yk(2) ~= 0)
      xk = xk - yk(1)/yk(2);
      yk = fun(xk);
      ek = abs((xk-H(i,1))/xk);
      i++;
      H(i,1) = xk;
      H(i,2) = yk(1);
    end
    disp(H);
    disp("MEJOR APROXIMACION BAJO LAS CONDICIONES DADAS");
    if (abs(yk(1)) >= e)
      disp("Elija un mejor punto o un mayor numero de iteraciones");
    end
    R = xk;
  end
endfunction