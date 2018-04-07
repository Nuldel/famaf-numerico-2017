#Script
1;

function x = soltrsup(A,b)
  if (size(A,1) ~= size(A,2))
    error("La matriz del sistema debe ser cuadrada!");
  elseif (!trsup_test(A))
    error("La matriz del sistema debe ser triangular superior!");
  else
    for i = size(A):-1:1     #sustitucion hacia atras
      a = 0;
      for j = i+1:size(A)
        a += x(j)*A(i,j);
      end
      if (A(i,i) == 0)       #ningun elem. en la diag. puede ser cero
        error("La matriz proporcionada es SINGULAR");
      else
        x(i) = (b(i)-a)/A(i,i);
      end
    end
  end
endfunction

function x = soltrinf(A,b)
  if (size(A,1) ~= size(A,2))
    error("La matriz del sistema debe ser cuadrada!");
  elseif (!trinf_test(A))
    error("La matriz del sistema debe ser triangular superior!");
  else
    for i = 1:size(A)        #sustitucion hacia adelante
      a = 0;
      for j = i-1:-1:1
        a += x(j)*A(i,j);
      end
      if (A(i,i) == 0)
        error("La matriz proporcionada es SINGULAR");
      else
        x(i) = (b(i)-a)/A(i,i);
      end
    end
  end
endfunction

function b = trsup_test(A)
  b = true;
  i = 2;
  while (i <= size(A) && b)  #comprueba todos los ceros hasta que uno falle
    for j = 1:i-1
      if (A(i,j) ~= 0)
        b = false;
        break
      end
    end
    i++;
  end
endfunction

function b = trinf_test(A)
  b = true;
  i = 1;
  while (i < size(A) && b)
    for j = i+1:size(A)
      if (A(i,j) ~= 0)
        b = false;
        break;
      end
    end
    i++;
  end
endfunction      