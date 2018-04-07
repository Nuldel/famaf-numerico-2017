function w = inewton(x,y,z)
  global n;
  n = length(x);  #variable global: cantidad de puntos (para diff_div)
  d = diff_div(x,y);  #diferencias divididas calculadas una sola vez
  for k = 1:length(z)  #evaluacion directa (coef. ya calculados)
    dc = d;
    for i = 2:n
      for j = 1:i-1
        dc(i) = dc(i)*(z(k)-x(j));
      end
    end
    w(k) = sum(dc);
  end
endfunction

function d = diff_div(x,y)
  global n;
  dd = [transpose(x) transpose(y)];  #vista matricial de dif. divididas
  for j = 3:n+1
    for i = 1:n-j+2
      dd(i,j) = (dd(i+1,j-1)-dd(i,j-1))/(dd(i+j-2,1)-dd(i,1));
    end
  end
  d = dd(1,2:n+1);
endfunction