function HSIbin = binning(HSI,bin)
%%
%---------------------------------------------------------------------------
% BINNING is a method that reduces the images in spatial dimension by
% substuiting a binning (window) of pixels by only a representative of them.
%
% I/O: HSIbin = binning(HSI,bin);
%
% INPUTS
%
%       HSI: hyperspectral image to be corrected.
%       bin: window of pixels to be reduced.
%
% OUTPUT
%
%       HSIbin: hyperspectral image binning.
%
% See also: RMVDEADPX, SELROI, UNFOLDHSI
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br
% Checked by JVR: 24/11/2010
%---------------------------------------------------------------------------

%%

[~,~,p] = size(HSI);
H1 = HSI(1:bin:end,1:bin:end,:);
H2 = HSI(2:bin:end,2:bin:end,:);
[m1,n1,~] = size(H1);
[m2,n2,~] = size(H2);

if m1 == m2 && n1 == n2
    HSIbin = (H1 + H2)/2;
elseif n1 == n2
    Ht1 = H1(1,:,:);
    Ht2 = (H1(2:end,:,:) + H2)/2;
    HSIbin = [Ht1;Ht2];
elseif m1 == m2
    Ht1 = H1(:,1,:);
    Ht2 = (H1(:,2:end,:) + H2)/2;
    HSIbin = [Ht1,Ht2];
else
    Ht1 = H1(1,2:end,:);
    Ht2 = (H1(2:end,2:end,:) + H2)/2;
    Ht3 = H1(:,1,:);
    Hb1 = [Ht1;Ht2];
    HSIbin = [Ht3,Hb1];
end

figure
set(gcf,'color','w');
subplot(1,2,1)
imagesc(HSI(:,:,p))
title('Original','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('y spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
xlabel('x spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
colormap('jet')
subplot(1,2,2)
imagesc(HSIbin(:,:,p))
title('Binning','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('y spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
xlabel('x spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
colormap('jet')

end