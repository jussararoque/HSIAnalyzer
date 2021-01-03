%---------------------------------------------------------------------------
% BINNING is a method that reduces the images in spatial dimension by
% replacing a number of pixels (window) by only one representative pixel.
%
% I/O: HSIbin = binning(HSI,bin);
%
% INPUTS
%
%       HSI: hyperspectral image to be corrected.
%       bin: window of pixels to be reduced.
%
% OUTPUT
%
%       HSIbin: hyperspectral image binning.
%
% See also: PLOTHSI, SELROI, RMVDEADPX, RMVSPI, UNFOLDHSI
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 22/12/2020
%---------------------------------------------------------------------------