% Center of mass at 20second

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
plot(CX_sum,CY_sum,'*','markersize',30)
hold off

%==================================================================
%Center of mass at 30second

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
%=============================================================\
center of mass at 10 second

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
  

F_sum10 = 0;
for  K= 1080:1350
start   = 1080;
stop    =1350;
F_sum10  = sum(F(:,:,start:stop), 3);
CY_sum10 = mean(cy_sum(start:stop),'omitnan')
CX_sum10 = mean(cx_sum(start:stop),'omitnan')

start   = 1350;
stop    = 1620;
F_sum11  = sum(F(:,:,start:stop), 3);
CY_sum12 = mean(cy_sum(start:stop),'omitnan')
CX_sum13 = mean(cx_sum(start:stop),'omitnan')
  

F_sumC= F_sum6+F_sum7+F_sum8+F_sum9+F_sum10+F_sum11
imshow(F_sumC,[]); hold on
plot(CX_sum6,CY_sum6,'*','markersize',30)
plot(CX_sum7,CY_sum7,'*','markersize',30)
plot(CX_sum8,CY_sum8,'*','markersize',30)
plot(CX_sum9,CY_sum9,'*','markersize',30)
plot(CX_sum10,CY_sum10,'*','markersize',30)
plot(CX_sum11,CY_sum11,'*','markersize',30)
hold off

center of mass at 60sec

start   = 1;
stop    = 1622;
F_sum12  = sum(F(:,:,start:stop), 3);
CY_sum12 = mean(cy_sum(start:stop),'omitnan')
CX_sum12 = mean(cx_sum(start:stop),'omitnan')
imshow(F_sum12,[]); hold on
plot(CX_sum12,CY_sum12,'*','markersize',30)
hold off
