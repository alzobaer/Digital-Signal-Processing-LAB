%y[n] = 0.5*y[n-1] + (2/3)*x[n] + x[n-1];
%x[n] = [0.4, 0.9, 1.2, 1.3, 3.4, 0.7];
%y[-1] = 0; x[-1] = 0;
x = [1; zeros(9,1)];  % unit impulse signal
%x = 0.5 : 1/10 : 1;
%x = [0.4 0.9 1.2 1.3 3.4 0.7];
yCofficient = [1 0.5];
xCofficient = [2/3 1];
output =  zeros(1, length(x));
  for i = 1:length(x)
    %output(i) = 0;
    for j = 2:length(yCofficient)
      if i >= j
        output(i) = output(i) + yCofficient(j)*output(i-j+1);
      end
    end
    for j = 1:length(xCofficient)
      if i >= j
        output(i) = output(i) + xCofficient(j)*x(i-j+1);
      end
    end
  end
  t = 0 : 1 : length(x) - 1;
  disp(output);
  plot(x, 'r');
  plot(t, output, 'b');
 

