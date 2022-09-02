## Algorithm
Let an input sequence `x` and an impulse response `h`.
1. Find the lengths of `x` and `y` as `lenx` and `lenh`.
2. Find the length of output sequence `y` as `N=lenx*+leny-1`.
3. We need to equalize the two sequence in size. For this, initialize others index as 0.
4. Initialize all the value of `y` as 0.
5. Perform linear convolution as follows:
   ```
   for i=1:N
   	for j=1:i
   		y(i) = y(i) + x(j)*h(i-j+1)
   	end
   end
   ```
