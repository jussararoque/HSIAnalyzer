% Presenting the demo
fprintf('\n')
display('-------------------------------------------------------------')
display('This is a demonstration of HSI Analyzer package.')
fprintf('\n')
display('Available on : https://github.com/jussararoque/HSIAnalyzer')
fprintf('\n')
display('Contact e-mail: jussara.roque@ufv.br / jussararoque@gmail.com')
display('-------------------------------------------------------------')
fprintf('\n')
display('Press any key to continue...')
pause;
fprintf('\n')

% Loading example
load('ResultExample.mat')
display('>> loading ResultExample.mat')
fprintf('\n')
pause(2);

% Comparing spectra woth reference
display('--------------------')
display('Comparing spectra...')
display('--------------------')
fprintf('\n')
pause(2);
display('>> help compspec')
help compspec
pause(2);
display('>> spec = compspec(sopt,pure_spectra,w);')
spec = compspec(sopt,pure_spectra,w);
fprintf('\n')
display('Press any key to continue...')
pause;

% Distribution maps
fprintf('\n')
display('--------------------')
display('Distribution maps...')
display('--------------------')
pause(2);
fprintf('\n')
display('>> help distmaps')
help distmaps
pause(2);
fprintf('\n')
display('>> Ximg = distmaps(copt,m,n)')
fprintf('\n')
display('---------------')
display('rows (m): 117')
fprintf('\n')
display('columns (n): 43')
display('---------------')
Ximg = distmaps(copt,117,43);
fprintf('\n')
display('Press any key to continue...')
pause;
fprintf('\n')

% Macropixel
display('----------------------')
display('Macropixel analysis...')
display('----------------------')
fprintf('\n')
display('>> help macroindex')
help macroindex
pause(2);
display('-----------------------------------------')
display('mpsize: 10')
fprintf('\n')
display('Cellulose acetate')
fprintf('\n')
display('>> Macro1 = macroindex(Ximg{1,1},mpsize);')
fprintf('\n')
display('Glycerol')
fprintf('\n')
display('>> Macro2 = macroindex(Ximg{2,1},mpsize);')
fprintf('\n')
display('Teflon')
fprintf('\n')
display('>> Macro3 = macroindex(Ximg{3,1},mpsize);')
display('-----------------------------------------')
fprintf('\n')
Macro1 = macroindex(Ximg{1,1},10);
Macro2 = macroindex(Ximg{2,1},10);
Macro3 = macroindex(Ximg{3,1},10);
fprintf('\n')
display('Press any key to continue...')
pause(2);

% finish
fprintf('\n')
display('>> The demo has ended!!!')
fprintf('\n')
display('---------------------------------------')
display('The results are ready to be analyzed!!!')
display('---------------------------------------')