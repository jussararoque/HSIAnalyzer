%---------------------------------------------------------------------------
% MSC provides the multiplicative scatter/signal correction by least
% squares regression.
%
% I/O: Dmsc = msc(D,type);
%
% INPUTS
%
%       D: spectral array of all pixels.
%       type: the MSC correction can be performed using mean or median to
%       obtain a reference spetrum.
%       'mean' or 'median' are the options available.
%
% OUTPUT
%
%       Dmsc: spectra with MSC correction.
%
% See also: AUTOESCALE, MEANCENTER, SAVGOL, BASELINE, SNV, NORMALIZE
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 23/12/2020
%---------------------------------------------------------------------------