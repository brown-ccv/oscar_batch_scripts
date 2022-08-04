N = 10^6;

x = rand(N,1);	% initializing 'x' with random values

% Looping
y1 = func1(x);

% Looping with pre-allocation
y2 = func2(x);

% Vectorization
y3 = func3(x);

% FFT
y4 = fft(x);