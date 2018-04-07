function y = senint(x)
  for i = 1:length(x)
    n = 1;
    while (x(i)/n > 0.1)
      n++;
    end
    y(i) = intenumcomp(inline("cos(x)"),[0 x(i)],n,"trapecio");
  end
endfunction