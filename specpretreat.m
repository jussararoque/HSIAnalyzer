%---------------------------------------------------------------------------
% Available spectral pretreatments:
%
% AUTOESCALE consists of calculating the average and standard deviation of
% the intensities for each variable. Then, each variable is subtracted by
% the respective average and divide it by the respective standard deviation.
%
% MEANCENTER consists of calculating the average of the intensities for
% each variable and subtracting the intensity of the respective average
% value.
%
% MSC provides the multiplicative scatter/signal correction by least
% squares regression.
%
% SAVGOL is Savitzky-Golay smoothing and differentiation.
%
% SNV is the standard normal variate that consists of calculating the
% average and standard deviation of thee intensities for each sample (D
% rows). Then, each sample is subtracted by the respective average and
% divide it by the respective standard deviation.
%
% BASELINE provides background correction for a signal with peaks.
%
% NORMALIZE performs the multiplication of spectra by a factor that makes
% the norm or some associated quantity such as an integral equal to a
% desired value.
%---------------------------------------------------------------------------
%
% See also: AUTOESCALE, MEANCENTER, SAVGOL, MSC, SNV, BASELINE, NORMALIZE
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 23/12/2020