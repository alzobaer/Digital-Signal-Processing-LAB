function [h, lags] = mycorr(x, y)
  lenx = length(x)
  leny = length(y)
  h = zeros(1, lenx + leny)
  yy = zeros(1, leny)
  %calculating y(-n) from y(n)
  yy = flip(y)
  %%
  
  %% correlation calculation
  for i=1:lenx
    for j=1:leny
      h(i+j-1) = h(i+j-1) + x(i)*yy(j)
    endfor
  endfor
  %%
  % calculate lags
  lags = -leny+1 : lenx
end
