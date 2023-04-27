function y = gpuFFT(x)
  x1 = gpuArray(x);	% Transfer data to GPU device
  whos('x1')
  y1 = fft(x1);		% Perform FFT on GPU
  whos('y1')
  y = gather(y1);	% Bring data back to CPU
  whos('y');
end
