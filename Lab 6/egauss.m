function [U y] = egauss(A,b)
  S = [A b.'];                         #matriz aumentada del sistema
  for j = 1:min(size(A))               #la menor dimension de A
    if (!S(j,j))                       #S(j,j) == 0
      for i = j+1:size(A,1)            #busqueda de fila con pivot ~= 0
        if (S(i,j))                    #S(j,j) ~= 0
          swap_row(S,j,i);
          break
        endif
      endfor
    endif
    pivot = S(j,j);                    #solo para codigo legible
    if pivot
      for i = j+1:size(A,1)            #reduccion de cada fila
        mult = S(i,j)/pivot;           #multiplicador
        for k = 1:size(S,2)            #reduccion de cada campo de la fila
          S(i,k) -= mult*S(j,k);
        endfor
      endfor
    endif
  endfor
  U = S(:,1:size(A,2));
  y = transpose(S(:,size(S,2)));
endfunction

function swap_row(A,i,j)     #intercambiar dos filas
  aux_row = A(i,:);
  A(i,:) = A(j,:);
  A(j,:) = aux_row;
endfunction
    
      