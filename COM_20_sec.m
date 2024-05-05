function [F_sum,CX_sum,CY_sum] = COM_20_sec(start, stop)
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
d = start:stop

start   = 1;
stop    = 540;
F_sum1  = sum(F(:,:,start:stop), 3);
CY_sum1 = mean(cy_sum(start:stop),'omitnan')
CX_sum1 = mean(cx_sum(start:stop),'omitnan')
 

start   = 540;
stop    = 1080;
F_sum2  = sum(F(:,:,start:stop), 3);
CY_sum2 = mean(cy_sum(start:stop),'omitnan')
CX_sum2 = mean(cx_sum(start:stop),'omitnan')

start   = 1080;
stop    = 1620;
F_sum3  = sum(F(:,:,start:stop), 3);
CY_sum3 = mean(cy_sum(start:stop),'omitnan')
CX_sum3 = mean(cx_sum(start:stop),'omitnan')

F_sumA= F_sum1+F_sum2+F_sum3
imshow(F_sumA,[]); hold on
plot(CX_sum1,CY_sum1,'*','markersize',30)
plot(CX_sum2,CY_sum2,'*','markersize',30)
plot(CX_sum3,CY_sum3,'*','markersize',30)
hold off