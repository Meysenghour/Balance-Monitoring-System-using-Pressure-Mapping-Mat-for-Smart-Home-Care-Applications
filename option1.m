for n = 1:1622
F_sum = F_sum + F(:,:,n)
        cy_sum = [cy(:,:,n)]
         cx_sum = [cx(:,:,n)]
    if mod(n,27)
        continue
    end
    disp(['Divisible by 27: ' num2cell(n)])
end
  imshow(F_sum,[]); hold on
  plot(cx_sum,cy_sum,'*','markersize',10)
  hold off