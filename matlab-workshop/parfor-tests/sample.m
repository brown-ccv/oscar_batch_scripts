pc = parcluster('local');       % get parallel cluster object
delete(pc.Jobs);
jobid = getenv('SLURM_JOB_ID');     % use job id for unique directory name
path = ['~/scratch/matlab-temp/' jobid];    % assemble full path
mkdir(path);                    % create the directory
pc.JobStorageLocation = path;   % define it as job storage location

parpool(pc,4)       % start parpool using the configuration

tic
parfor i=1:4
    pause(3);
end
toc

delete(gcp('nocreate'))     % delete parpool

