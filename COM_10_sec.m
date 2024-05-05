
function [F_sum,CX_sum,CY_sum] = COM_10_sec(start, stop)
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
b = start:stop
start   = 1;
stop    = 270;
F_sum6  = sum(F(:,:,start:stop), 3);
CY_sum6 = mean(cy_sum(start:stop),'omitnan')
CX_sum6 = mean(cx_sum(start:stop),'omitnan')

start   = 270;
stop    = 540;
F_sum7  = sum(F(:,:,start:stop), 3);
CY_sum7 = mean(cy_sum(start:stop),'omitnan')
CX_sum7 = mean(cx_sum(start:stop),'omitnan')  
 
start   = 540;
stop    = 810;
F_sum8  = sum(F(:,:,start:stop), 3);
CY_sum8 = mean(cy_sum(start:stop),'omitnan')
CX_sum8 = mean(cx_sum(start:stop),'omitnan')

start   = 810;
stop    = 1080;
F_sum9  = sum(F(:,:,start:stop), 3);
CY_sum9 = mean(cy_sum(start:stop),'omitnan')
CX_sum9 = mean(cx_sum(start:stop),'omitnan')
  
start   = 1080;
stop    =1350;
F_sum10  = sum(F(:,:,start:stop), 3);
CY_sum10 = mean(cy_sum(start:stop),'omitnan')
CX_sum10 = mean(cx_sum(start:stop),'omitnan')

start   = 1350;
stop    = 1620;
F_sum11  = sum(F(:,:,start:stop), 3);
CY_sum11 = mean(cy_sum(start:stop),'omitnan')
CX_sum11 = mean(cx_sum(start:stop),'omitnan')
 
F_sumC= F_sum6+F_sum7+F_sum8+F_sum9+F_sum10+F_sum11
imshow(F_sumC,[]); hold on
plot(CX_sum6,CY_sum6,'*','markersize',30)
plot(CX_sum7,CY_sum7,'*','markersize',30)
plot(CX_sum8,CY_sum8,'*','markersize',30)
plot(CX_sum9,CY_sum9,'*','markersize',30)
plot(CX_sum10,CY_sum10,'*','markersize',30)
plot(CX_sum11,CY_sum11,'*','markersize',30)
hold off