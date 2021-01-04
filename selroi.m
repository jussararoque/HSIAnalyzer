%--------------------------------------------------------------------------
% SELROI is a function that performs a selection of a region of interest 
% (ROI) in the HSI image.
%
% I/O: HSIsel = selroi(HSI,ydim1,ydim2,xdim1,xdim2);
%
% INPUTS
%
%       HSI: hyperspectral image original.
%
%       (OPTIONAL)
%       ydim1: beginning of selected region in y-dimension.
%       ydim2: end of selected region in y-dimension.
%       xdim1: beginning of selected region in x-dimension.
%       xdim2: end of selected region in x-dimension.
%
% OUTPUT
%
%       HSIsel: hyperspectral image with the selected ROI. 
%
% See also: PLOTHSI, RMVDEADPX, BINNING, RMVSPI, UNFOLDHSI
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 22/12/2020
%--------------------------------------------------------------------------