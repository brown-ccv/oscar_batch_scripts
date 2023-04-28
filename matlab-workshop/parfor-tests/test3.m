b=1;
parfor i=1:25
  b=2^i;
  disp([num2str(i) ' ' num2str(b)]);
end
