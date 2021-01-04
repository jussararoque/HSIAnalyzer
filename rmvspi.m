%--------------------------------------------------------------------------
% RMVSPI remove spikes in a HSI image.
%
% I/O: HSIspi = rmvspi(HSI,win);
%
% INPUTS
%
%       HSI: hyperspectral image to be corrected.
%       win: a 1 or 2 element vector (x,y dimensions) of odd integers 
%            corresponding to the window width of spike filter.         
%            If scalar, (win) is set to win = [win win].
%
% OUTPUT
%
%       HSIcorr: hyperspectral image without spikes.
%
% See also: PLOTHSI, SELROI, BINNING, RMVDEADPX, UNFOLDHSI
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 22/12/2020
%--------------------------------------------------------------------------