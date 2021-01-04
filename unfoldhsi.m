%--------------------------------------------------------------------------
% UNFOLDHSI is a function that performs the unfold in HSI image (three-way
% structure) to an array (two-way structure).
% This function can be used to unfold of one HSI sample or a series of HSI
% concateneted HSI images in vertical orientation.
%
% I/O: [D,X] = unfoldhsi(HSI,samp);
%
% INPUTS
%
%       HSI: hyperspectral image to be unfolded.
%       samp: number of HSI samples.
%
% OUTPUT
%
%       D: spectral array of all pixels
%       X: mean of D
%
% See also: PLOTHSI, SELROI, RMVDEADPX, BINNING, RMVSPI
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Checked by JVR: 22/12/2020
%--------------------------------------------------------------------------