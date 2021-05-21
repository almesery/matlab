%% function to create file if user enter "y"
function create_file(createTextFile, result)

if isequal(createTextFile, 'y')
    filelocationPath = strcat(pwd, '\results.txt');
    locationOfFile = fopen( filelocationPath, 'wt' );
    if filelocationPath > 0
          fprintf( locationOfFile, '%d\n', result); 
          fclose(locationOfFile);
          disp(strcat('The path of the file is :', filelocationPath));
          edit results.txt;
    end
end
    
end