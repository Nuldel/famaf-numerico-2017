function w = ilagrange(x,y,z)  #se evalua en todos los ptos. de z
  for k = 1:length(z)
    w(k) = lagrange_single(x,y,z(k));
  end
endfunction

function R = lagrange_single(x,y,p)  #p es 1x1
  n = length(x);
  for i = 1:n  #cada polinomio base
    for j = 1:n  #cada factor del polinomio base
      if (j == i)
        factt(j) = 1;  #el factor que no va
      else
        factt(j) = (p-x(j))/(x(i)-x(j));
      end
    end
    card(i) = prod(factt);  #el polinomio base completo
  end
  R = sum(y.*card);
endfunction 