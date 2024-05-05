
function [F_sum,CX_sum,CY_sum] = COM(t_second)

SR =27;
array = t_second * SR;
for a = 1:array
    if mod(a,27)
        continue;
    end
    fprintf('27 array: %d\n' , a);
end
%a = start:stop
F_sum = sum(F(:,:,a), 3);
CX_sum = mean(cx_sum(a),'omitnan')
CY_sum = mean(cy_sum(a),'omitnan')
imshow(F_sum,[]); hold on
plot(CX_sum,CY_sum,'*','markersize',30)
hold off
end