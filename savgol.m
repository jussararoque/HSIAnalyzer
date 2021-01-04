%---------------------------------------------------------------------------
% SAVGOL is Savitzky-Golay smoothing and differentiation.
%
% I/O: Dsg = savgol(D,width,order,deriv);
%
% INPUTS
%
%       D: spectral array of all pixels.
%       width: number of points in filter (must be odd integers).
%       order: polynomial order (2 is recommended).
%       deriv: derivative order.
%
% OUTPUT
%
%       Dsg: spectra with SAVGOL correction.
%
% OBS: To perform only smoothing, only D array is mandatory and width can
% be informed. Order and deriv should not be informed.
%
% See also: AUTOESCALE, MEANCENTER, SNV, MSC, BASELINE, NORMALIZE
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 23/12/2020
%---------------------------------------------------------------------------