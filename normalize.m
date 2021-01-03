%---------------------------------------------------------------------------
% NORMALIZE performs the multiplication of spectra by a factor that makes
% the norm or some associated quantity such as an integral equal to a
% desired value.
%
% I/O: Dnorm = normalize(D,type);
%
% INPUTS
%
%       D: spectral array of all pixels.
%       type: types of normalization
%            1-> Unit length.
%            2-> Unit area.
%            Inf-> The maximum value is set to 1.
% OUTPUT
%
%       Dnorm: normalized spectra.
%
% See also: AUTOESCALE, MEANCENTER, SAVGOL, BASELINE, SNV, MSC
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 23/12/2020
%---------------------------------------------------------------------------