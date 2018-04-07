function s = intenumcomp(f,I,n,rule)
  p = linspace(I(1),I(2),n+1);
  h = (I(2)-I(1))/n;
  switch (rule)
    case "pm"
      for i = 1:n
        aux(i) = f((p(i)+p(i+1))/2);
      end
      s = h*sum(aux);
    case "trapecio"     #rearmado para asegurar eficiencia
      aux = 0;
      for i = 2:n
        aux(i-1) = f(p(i));
      end
      s = f(p(1))/2 + f(p(n+1))/2 + sum(aux);
      s = h*s;
    case "simpson"
      aux = 0;
      for i = 2:n
        aux(i-1) = f(p(i));
      end
      for i = 1:n
        aux2(i) = f((p(i)+p(i+1))/2);
      end
      s = f(p(1)) + f(p(n+1)) + 2*sum(aux) + 4*sum(aux2);
      s = s*h/6;
    otherwise
      disp("opcion no valida. escriba 'trapecio', 'pm' o 'simpson'");
      s = 0;
  end
endfunction