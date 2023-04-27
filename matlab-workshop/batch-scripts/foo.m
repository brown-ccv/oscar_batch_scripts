function [] = foo(a)
	
	% a = getenv('SLURM_ARRAY_TASK_ID');
	
	a = int32(a);
	
	if a==1
		disp('blah blah');
	elseif a==2
		disp('la la la');
	elseif a==3
		disp('serious stuff');
	elseif a==4
		disp('okay');
	else
		disp('Rubbish input, human');
	end
end
