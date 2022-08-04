function y = func1(x)
% Using for loop, No pre-allocation 
    for i=1:length(x)
        y(i) = (sin(x(i)))^2 + (cos(x(i)))^2;
    end
end
