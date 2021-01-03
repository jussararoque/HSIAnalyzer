%% Macropixel analysis and homogeneity index
%--------------------------------------------------------------------------
% Macropixel analysis is a measure of image homogeneity based on pixel
% clusters. The homogeneity concept is related to the totally random
% distribution of components in a system. Then, in this algorithm, the
% homogeneity parameters are calculated comparing the real image with a
% random version obtained from the same pixels.
%
% Copyright: Jussara V. Roque and Wilson Cardoso, 2019.
%--------------------------------------------------------------------------
%
% I/O: Macro = macroindex(Ximg,mpsize);
%
% INPUTS
%
%       Ximg: Array of original image.
%       mpsize: macropixel size.
%
% OUTPUT
%
%       Macro: struct containning the macropixel and homoneity results.
%
% See also: DISTMAPS, COMPSPEC
%
% E-mail: jussara.roque@ufv.br / jussararoque@gmail.com
% Updated and checked by JVR: 03/01/2021
%
% L.R. Terra, J.V. Roque, C.C. Pola, I.M. Gonçalves, N.F.F. Soares, R.F.
% Teófilo
% Study of chemical compound spatial distribution in biodegradable active
% films using NIR hyperspectral imaging and multivariate curve resolution.
% https://doi.org/10.1002/cem.3193
%--------------------------------------------------------------------------