
function [F_sum,CX_sum,CY_sum] = COM_30_sec(start, stop)
T = readmatrix('dataset.csv')  
R = reshape(T.',size(T,2), 16, []) 
 size(R)
 P = permute(R,[2 1 3])
 size(P)
 F = P(:,:,1:1622)
szf = size(F)
Ft = sum(sum(F,1),2)
cy = sum((1:szf(1)).'.*sum(F,2))./Ft
cx = sum((1:szf(2)).*sum(F,1))./Ft
cy_sum = squeeze(cy)'
cx_sum = squeeze(cx)' 
c = start:stop
start   = 1;
stop    = 810;
F_sum4  = sum(F(:,:,start:stop), 3);
CY_sum4 = mean(cy_sum(start:stop),'omitnan')
CX_sum4 = mean(cx_sum(start:stop),'omitnan')

start   = 810;
stop    = 1620;
F_sum5  = sum(F(:,:,start:stop), 3);
CY_sum5 = mean(cy_sum(start:stop),'omitnan')
CX_sum5 = mean(cx_sum(start:stop),'omitnan')

F_sumB= F_sum4+F_sum5
imshow(F_sumB,[]); hold on
plot(CX_sum4,CY_sum4,'*','markersize',30)
plot(CX_sum5,CY_sum5,'*','markersize',30)
hold off


