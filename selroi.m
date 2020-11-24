function HSIsel = selroi(HSI,rowi,rowf,coli,colf,w)
%%
%--------------------------------------------------------------------------
% SELROI is a function that performs a selection of a region of interest 
% (ROI) in the HSI image.
%
% I/O: HSIsel = selroi(HSI,ydim1,ydim2,xdim1,xdim2);
%
% INPUTS
%
%       HSI: hyperspectral image original.
%       ydim1: beginning of selected region in y-dimension.
%       ydim2: end of selected region in y-dimension.
%       xdim1: beginning of selected region in x-dimension.
%       xdim2: end of selected region in x-dimension.
%
% OUTPUT
%
%       HSIsel: hyperspectral image with the selected ROI.
%
% See also: RMVDEADPX, BINNING, UNFOLDHSI
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br
% Checked by JVR: 24/11/2010
%--------------------------------------------------------------------------

%%

if nargin < 6
    [~,~,w] = size(HSI);
else
    [~,~,p] = size(HSI);
    if w > p
        w = p;
        display('w : Index exceeds dimension.');
        fprintf('w used: #%d\n', p);
    end
end

HSIsel = HSI(rowi:rowf,coli:colf,:);

figure
set(gcf,'color','w');
subplot(1,2,1)
imagesc(HSI(:,:,w))
title('Original','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('y spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
xlabel('x spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
colormap('jet')
subplot(1,2,2)
imagesc(HSIsel(:,:,w))
title('Selected region','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('y spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
xlabel('x spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
colormap('jet')

end