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
load('SampExample.mat')
display('>> loading SampExample.mat')
fprintf('\n')
pause(2);

% Ploting the image
display('------------------------------')
display('Ploting the colormap of HSI...')
display('------------------------------')
fprintf('\n')
pause(2);
display('>> help plothsi')
help plothsi
pause(2);
display('>> plothsi(HSI,wave);')
plothsi(HSI,256)
fprintf('\n')
display('Press any key to continue...')
pause;

% Selecting ROI
fprintf('\n')
display('-------------------------------------------------')
display('Attempt to select the region of interest (ROI)...')
display('-------------------------------------------------')
pause(2);
fprintf('\n')
display('>> help selroi')
help selroi
pause(2);
fprintf('\n')
display('>> HSIsel = selroi(HSI,ydim1,ydim2,xdim1,xdim2);')
fprintf('\n')
display('----------------------')
display('ydim1: 18   ydim2: 251')
fprintf('\n')
display('xdim1: 109  xdim2: 193')
display('----------------------')
HSIsel = selroi(HSI,18,251,109,193);
fprintf('\n')
display('Press any key to continue...')
pause;
fprintf('\n')

% Dead pixels
display('---------------------------')
display('Looking for dead pixels ...')
display('---------------------------')
fprintf('\n')
display('>> help rmvdeadpx')
help rmvdeadpx
pause(2);
display('-----------------------------------------------------')
display('Removing dead pixels by MEAN of neighboring pixels...')
display('-----------------------------------------------------')
fprintf('\n')
display('>> HSIcorr = rmvdeadpx(HSIsel,type);')
fprintf('\n')
HSIdp = rmvdeadpx(HSIsel,'mean');
fprintf('\n')
display('Press any key to continue...')
pause;
fprintf('\n')

% Binning
display('--------------------')
display('Spatial reduction...')
display('--------------------')
fprintf('\n')
display('>> help binning')
help binning
pause(2);
display('-------------------------')
display('Bin size of 2. -> bin = 2')
display('-------------------------')
fprintf('\n')
display('>> HSIbin = binning(HSIcorr,bin);')
fprintf('\n')
HSIbin = binning(HSIdp,2);
display('Press any key to continue...')
pause;
fprintf('\n')

% Spike
display('---------------')
display('Spike search...')
display('---------------')
fprintf('\n')
display('>> help rmvspi')
help rmvspi
pause(2);
display('--------------------------------------------------')
display('Win size of 5 in both pixel directions. -> win = 5')
display('--------------------------------------------------')
fprintf('\n')
display('>> HSIspi = rmvspi(HSIbin,win);;')
HSIspi = rmvspi(HSIbin,5);
display('Press any key to continue...')
pause;
fprintf('\n')

% Unfold
display('------------------------------------------')
display('Transforming HSI in a two way structure...')
display('------------------------------------------')
fprintf('\n')
display('>> help unfoldhsi')
help unfoldhsi
pause(2);
display('------------------------------------------------------')
display('Informing a number of samples vertically concatened...')
fprintf('\n')
display('In this example: one sample. -> samp = 1 ')
display('------------------------------------------------------')
fprintf('\n')
display('>> D = unfoldhsi(HSIspi,samp);')
D = unfoldhsi(HSIspi,1);
pause(2);
fprintf('\n')
display('----------------------------------------------------------')
display('D: matrix to be used in MCR-ALS. ')
fprintf('\n')
display('Spectral pretreatments are highly recommended in D matrix.')
display('----------------------------------------------------------')
fprintf('\n')
display('Press any key to continue...')
pause;
fprintf('\n')

% MSC
display('-----------------')
display('MSC correction...')
display('-----------------')
fprintf('\n')
display('>> help msc')
help msc
pause(2);
display('-----------------------------------------------')
display('Reference spectra obtained by MEDIAN spectra...')
display('-----------------------------------------------')
fprintf('\n')
display('>> Dmsc = msc(D,type);')
Dmsc = msc(D,'median');
fprintf('\n')
display('Press any key to continue...')
pause;
fprintf('\n')

% Smooth
display('-----------------')
display('Smooth correction...')
display('-----------------')
fprintf('\n')
display('>> help savgol')
help savgol
pause(2);
display('----------')
display('Width = 11')
display('----------')
fprintf('\n')
display('>> Dsmoo = savgol(Dmsc,11);')
Dsmoo = savgol(Dmsc,11);
pause(2);

% ploting spectra
fprintf('\n')
display('------------------------------------------------------------------------')
display('The plot visualization can take some time due to high number of spectra!')
display('------------------------------------------------------------------------')
figure
set(gcf,'color','w');
subplot(1,2,1)
plot(Dmsc')
axis tight
title('MSC','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('Intensity','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
xlabel('Spectral Dimension','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
subplot(1,2,2)
plot(Dsmoo')
axis tight
title('MSC + Smooth (11)','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
xlabel('Spectral Dimension','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
fprintf('\n')
display('Press any key to continue...')
pause;

%loading standards
fprintf('\n')
display('--------------------------')
display('Loading known standards...')
display('--------------------------')
fprintf('\n')
load('StandExample.mat')
display('>> loading StandExample.mat')
fprintf('\n')
pause(2);
display('-------------------------')
display('HSIace: cellulose acetate')
fprintf('\n')
display('HSIgli: glycerol')
fprintf('\n')
display('HSItef: teflon')
display('-------------------------')
pause(2);
fprintf('\n')
display('----------------------')
display('Unfolding standards...')
display('----------------------')
fprintf('\n')
display('>> Dace = unfoldhsi(HSIace,1);')
Dace = unfoldhsi(HSIace,1);
plothsi(HSIace,256,'Cellulose acetate')
pause(2);
display('>> Dgli = unfoldhsi(HSIgli,1);')
Dgli = unfoldhsi(HSIgli,1);
plothsi(HSIgli,256,'Glycerol')
pause(2);
display('>> Dtef = unfoldhsi(HSItef,1);')
Dtef = unfoldhsi(HSItef,1);
plothsi(HSItef,256,'Teflon')

pause(2);
fprintf('\n')
display('-----------------------------')
display('Obtaining the pure spectra...')
display('-----------------------------')
fprintf('\n')
display('>> pure_spectra = [mean(Dace);mean(Dgli); mean(Dtef)];')
pure_spectra = [mean(Dace);mean(Dgli);mean(Dtef)];
pause(2);
fprintf('\n')
display('-------------------------')
display('Concatening D matrices...')
display('-------------------------')
fprintf('\n')
display('>> Dmcr = [Dsmoo;Dace;Dgli;Dtef];')
Dmcr = [Dsmoo;Dace;Dgli;Dtef];
pause(2);

% finish
fprintf('\n')
display('>> The demo has ended!!!')
fprintf('\n')
display('-----------------------------------------------')
display('The data is prepared to be analyzed by MCR-ALS.')
display('-----------------------------------------------')