%% ENGI 1331 MA Grade Setup Script (GSS) [MATLAB 2017a]
% Fall 2017 - Stefan Bucur


%% Start

clc
clear

I = input('Which MA are you grading [#]? ');
MA_num = num2str(I);
RUBRIC = ['MA' MA_num '_Rubric.zip'];
FORMAT = ['MA' MA_num '_([a-z]|[0-9])+\.zip']; %regex

FileNames = {}; % valid .zip
BadFile = {}; % files not pertaining to the current MA

% find all .zip files
D = dir;
k=1;
j=1;
for i = 1:size(D,1)
    N = D(i).name;
    if regexpi(N, FORMAT, 'once')
        
        % file is named properly
        FileNames{k} = N;
        k=k+1;
        
        %unzip to ./MA#/username/*
        Start = find(N == '_');
        Zip = find(N == '.');
        F = N(Start+1:Zip-1);
        PATH = ['MA' MA_num '/' F];
        unzip(N, PATH); % if Rubric.zip, these lines are redundant
        unzip(RUBRIC, PATH);
        
    elseif regexpi(N, '.zip','once')
        % name error, deduct points
        BadFile{j}=N;
        j=j+1;
    end
end

fprintf(['Extracted %.0f/%.0f valid submissions with %.0f file errors.\nMAs extracted to ./MA' MA_num '/<cougarnet>/*\n'],length(FileNames)-1,length(D),length(BadFile)-1);

if length(BadFile) >1
    warning('Bad files detected. Some submitted files will have to be manually extracted (deduct points.)');
end
fprintf('\n\n');