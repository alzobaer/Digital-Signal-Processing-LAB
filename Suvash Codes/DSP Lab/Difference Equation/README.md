## Difference Equation
Let a function `differenceEquation(yCofficient, xCofficient, input)` where,  
`yCofficient` = Cofficient of 'y(n)`  
`xCofficient` = Cofficient of 'x(n)`  
and which return a sequence `output`.

## Algorithm
1. Take a sequence `output` which size is equal to the size of `input` and assign all the value equal 0.
2. Apply the follwing operation
```
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
```
