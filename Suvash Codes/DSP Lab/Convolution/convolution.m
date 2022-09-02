function output = convolution(x, h)
  lenx = length(x);
  lenh = length(h);
  N = lenx+lenh-1;
  x = [x, zeros(1, N-lenx)];
  h = [h, zeros(1, N-lenh)];
  output = zeros(1, N);
  for i=1:N
    for j=1:i
      output(i) = output(i) + x(j)*h(i-j+1);
    end
  end
end