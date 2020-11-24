function [D,X] = unfoldhsi(HSI,samp)
%%
%--------------------------------------------------------------------------
% UNFOLDHSI is a function that performs tha unfold in HSI image (three way
% structure) in an array (two way structure).
% This function performs the unfold of one HSI sample or a serie of HSI
% concatened HSI images in vertical orientation.
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
%       X: mean of spectral array of all pixels
%
% See also: RMVDEADPX, SELROI, BINNING
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br
% Checked by JVR: 24/11/2010
%--------------------------------------------------------------------------

%%

[m,n,p] = size(HSI);
if nargin == 1
    D = reshape(HSI,m*n,p);
    X = mean(D);
else
    m = m/samp;
    D = reshape(HSI(1:m,:,:),m*n,p);
    X = mean(D);
    for i = 2:samp
        D1 = reshape(HSI(((i-1)*m)+1:i*m,:,:),m*n,p);
        X1 = mean(D1);
        D = [D;D1];
        X = [X;X1];
    end
end
end