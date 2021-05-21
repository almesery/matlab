%% function to create file if user enter "y"
function create_file(createTextFile, R)

if isequal(createTextFile, 'y')
    filelocationPath = strcat(pwd, '\results.txt');
    locationOfFile = fopen( filelocationPath, 'wt' );
    if filelocationPath > 0
          fprintf( locationOfFile, '%d\n', R); 
          fclose(locationOfFile);
          disp(strcat('The path of the file is :', filelocationPath));
    end
end
    
end