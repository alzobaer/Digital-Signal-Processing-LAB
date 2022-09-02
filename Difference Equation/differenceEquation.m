function output = differenceEquation(yCofficient, xCofficient, input)
  
  %yCofficient[0]*y[n] + yCofficient[1]*y[n-1] + yCofficient[2]*y[n-2] + ... = xCofficient*x[n] + xCofficient * x[n-1] ......

  output = zeros(size(input));
  for i = 1:length(input)
    output(i) = 0;
    for j = 2:length(yCofficient)
      if i >= j
        output(i) = output(i) - yCofficient(j)*output(i-j+1);
      end
    end
    for j = 1:length(xCofficient)
      if i >= j
        output(i) = output(i) + xCofficient(j)*input(i-j+1);
      end
    end
  end
  
end