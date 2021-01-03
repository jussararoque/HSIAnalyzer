%---------------------------------------------------------------------------
% AUTOESCALE consists of calculating the average and standard deviation of
% the intensities for each variable. Then, each variable is subtracted by
% the respective average and divide it by the respective standard deviation.
%
% I/O: Dauto = autoescale(D);
%
% INPUT
%
%       D: spectral array of all pixels
%
% OUTPUT
%
%       Dauto: autoescaled spectra.
%
% See also: MEANCENTER, SAVGOL, MSC, SNV, BASELINE, NORMALIZE
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 23/12/2020
%---------------------------------------------------------------------------