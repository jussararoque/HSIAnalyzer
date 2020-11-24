function HSIcorr = rmvdeadpx(HSI,type)
%%
%--------------------------------------------------------------------------
% RMVDEADPX remove dead pixels in a HSI image.
%
% I/O: HSIcorr = rmvdeadpx(HSI,type);
%
% INPUTS
%
%       HSI: hyperspectral image to be corrected.
%       type: the dead pixel correction can be performed by interpolation
%       by mean or median of the neighboring values.
%           'mean' or 'median' are the options available.
%
% OUTPUT
%
%       HSIcorr: hyperspectral image without dead pixels.
%
% See also: SELROI, BINNING, UNFOLDHSI
%
% Copyright: Jussara V. Roque, 2020.
% E-mail: jussara.roque@ufv.br
% Checked by JVR: 24/11/2010
%--------------------------------------------------------------------------

%%

[m,n,p] = size(HSI);
Dm = zeros(m,n);
for i=1:m
    for j=1:n
        Dm(i,j)=mean(HSI(i,j,:));
    end
end

AB = [];
if find(Dm)==0
    [a,b]=find(Dm==0);
    ab = [a,b];
    AB = ab;
    switch type
        case {'mean','Mean','MEAN'}
            for i=1:size(ab,1)
                HSI(i,i,:)=mean([HSI(ab(i),ab(i)-1,:);HSI(ab(i),ab(i)+1,:)]);
            end
        case {'median','Median','MEDIAN'}
            for i=1:size(ab,1)
                HSI(i,i,:)=median([HSI(ab(i),ab(i)-1,:);HSI(ab(i),ab(i)+1,:)]);
            end
    end
elseif find(isnan(Dm)==1)
    [a,b]=find(isnan(Dm)==1);
    ab = [a,b];
    AB = [AB;ab];
    switch type
        case {'mean','Mean','MEAN'}
            for i=1:size(ab,1)
                HSI(i,i,:)=mean([HSI(ab(i),ab(i)-1,:);HSI(ab(i),ab(i)+1,:)]);
            end
        case {'median','Median','MEDIAN'}
            for i=1:size(ab,1)
                HSI(i,i,:)=median([HSI(ab(i),ab(i)-1,:);HSI(ab(i),ab(i)+1,:)]);
            end
    end
else
    display('There are no dead pixels!')
    AB = zeros(1,2);
end

HSIcorr = HSI;

figure
set(gcf,'color','w');
subplot(1,2,1)
imagesc(HSI(:,:,p))
hold on
plot(AB(:,1),AB(:,2),'kx')
title('Original','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('y spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
xlabel('x spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
colormap('jet')
subplot(1,2,2)
imagesc(HSIcorr(:,:,p))
title('Dead Pixel Removed','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('y spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
xlabel('x spacial dim','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
colormap('jet')

end