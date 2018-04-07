function H = vrbisec(f,I,e,m)
  a = I(1);        #igual que rbisec, pero devuelve los res. intermedios
  b = I(2);
  if (f(a) == 0)
    disp("Raiz inmediata!");
    H = [a;0];
  elseif (f(b) == 0)
    disp("Raiz inmediata!");
    H = [b;0];
  elseif (sign(f(a)) == sign(f(b)))
    disp("intervalo no valido!");
    H = [0;0];
  else
    disp("computando...");
    H = [0 0];
    i = 1;
    while (i <= m)
      r = (a+b)/2;
      res = f(r);
      H(i,1) = r;
      H(i,2) = res;
      if (res == 0)
        disp("Resultado exacto!");
        break
      elseif (abs(res) < e)
        break
      elseif (sign(res) == sign(f(a)))
        a = r;
      else
        b = r;
      end
      i++;
    end
    disp(H);
    disp("MEJOR APROXIMACION CON LAS CONDICIONES DADAS");
    H = transpose(H);  #para devolver un vector fila (por las dudas para plot)
  end
endfunction