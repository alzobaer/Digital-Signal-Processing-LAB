function output = differenceEquation(ycof, xcof, input)
  output = zeros(size(input));
  for i = 1:length(input)
    output(i) = 0;
    for j = 2:length(ycof)
      if i >= j
        output(i) = output(i) - ycof(j)*output(i-j+1);
      end
    end
    for j = 1:length(xcof)
      if i >= j
        output(i) = output(i) + xcof(j)*input(i-j+1);
      end
    end
  end
  
end
