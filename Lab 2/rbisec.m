function R = rbisec(f,I,e,m)
  a = I(1);
  b = I(2);
  if (f(a) == 0)             #pruebas iniciales
    disp("Raiz inmediata!");
    R = a;
  elseif (f(b) == 0)
    disp("Raiz inmediata!");
    R = b;
  elseif (sign(f(a)) == sign(f(b)))
    disp("intervalo no valido!");
    R = 0;
  else
    disp("computando...");        #empieza la primera iteracion real
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
    disp(H);        #los resultados intermedios, pero el ultimo es el que vale
    disp("MEJOR APROXIMACION CON LAS CONDICIONES DADAS");
    R = r;
  end
endfunction