fid = fopen('new.csv');
fOutput = fopen('new.csv');
tline = fgetl(fid);
while ischar(tline)
    disp(tline)
    tline = fgetl(fid);
%     if contains(tline, 'DISCLAIMER')
%         break,
%     end
    %fopen(fOutput,'%s/n', tline);
end
fclose(fid);
fclose(fOutput);
% reshape and crop off NaNs
F= reshape([; F(17,:)],17,10,[]);
%F = F(1:end-1,:,:);
% for sake of demonstration, just pick two pages
%F = F(:,:,370:371)
szf = size(F);
% global sum of F for all pages
Ft = sum(sum(F,1),2)

% coordinates of F centroid
cy = sum((1:szf(1)).'.*sum(F,2))./Ft
cx = sum((1:szf(2)).*sum(F,1))./Ft;
imshow(F,[]); hold on
plot(cx,cy,'*','markersize',20)
hold off
