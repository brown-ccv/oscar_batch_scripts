function y = func2(x)
% Looping with pre-allocation
	y = zeros(length(x),1);		%% Pre-allocate
	for i=1:length(x)
		y(i) = (sin(x(i)))^2 + (cos(x(i)))^2;
	end
end
