## algorithm

Let a function `correlation(x, y)` where `x` and `y` are two input sequence to calculate correlation
1. Calculate the length of `x` and `y`
2. Initialize an `output` array of size `lenx+leny-1` with all the value 0.
3. Reverse the array `y` as `iy(-n)`
4. Use a for loop to calculate output array
```
for i=1:lenx
    for j=1:leny
       output(i+j-1) = output(i+j-1) + x(i) * iy(i)
    end
end
```
5. Calculate `lags = -leny+1 : lenx`
6. Return `output` and `lags`.
