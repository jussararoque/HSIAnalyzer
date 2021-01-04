%---------------------------------------------------------------------------
% SNV is the standard normal variate that consists of calculating the
% average and standard deviation of thee intensities for each sample (D
% rows). Then, each sample is subtracted by the respective average and
% divide it by the respective standard deviation.
%
% I/O: Dsnv = snv(D);
%
% INPUT
%
%       D: spectral array of all pixels
%
% OUTPUT
%
%       Dsnv: spectra with SNV correction.
%
% See also: AUTOESCALE, MEANCENTER, SAVGOL, MSC, BASELINE, NORMALIZE
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 23/12/2020
%---------------------------------------------------------------------------