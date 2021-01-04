%--------------------------------------------------------------------------
% RMVDEADPX remove dead pixels in a HSI image.
%
% I/O: HSIdp = rmvdeadpx(HSI,type);
%
% INPUTS
%
%       HSI: hyperspectral image to be corrected.
%       type: the dead pixel correction can be performed through 
%       interpolation using mean or median of the neighboring values.
%            'mean' or 'median' are the options available.
%
% OUTPUT
%
%       HSIdp: hyperspectral image without dead pixels.
%
% See also: PLOTHSI, SELROI, BINNING, RMVSPI, UNFOLDHSI
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 22/12/2020
%--------------------------------------------------------------------------