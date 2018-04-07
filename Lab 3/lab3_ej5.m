function dat = lab3_ej5(path)  #path tiene que ser string
  dat = load(path);
  for i = 2:size(dat,2)
    s = polate([dat(:,1) dat(:,i)]);
    dat(:,i) = s;
  end
endfunction

function yfull = polate(y)  #interpolacion y extrapolacion simultanea
  idx = !isnan(y(:,2));  #indexado logico (para filtrar la matriz)
  yval = y(idx,:);
  yfull = interp1(yval(:,1),yval(:,2),y(:,1),"spline","extrap");
endfunction