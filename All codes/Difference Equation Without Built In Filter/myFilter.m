function [y] = myFilter(xCoff, yCoff, input_data)
y = zeros(1, length(input_data))
    for i = 1 : length(input_data)
        for j = 2 : length(yCoff)
            if (i >= j)
               y(i) = y(i) - yCoff(j) * y(i - j + 1)
            end
        end
        for j = 1 : length(xCoff)
           if(i >= j)
             y(i) = y(i) + xCoff(j) * input_data(i - j + 1) 
           end
        end
    end
end