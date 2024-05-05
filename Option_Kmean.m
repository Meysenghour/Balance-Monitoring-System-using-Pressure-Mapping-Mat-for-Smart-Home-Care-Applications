F= readmatrix('data.csv');
plot(F(:,1),F(:,2),'.');
title 'Center of mass with Kmeans'
%opts = statset('Display','final');
[idx,F] = kmeans(F,1);
figure;
hold on
plot(F(idx==2,1),F(idx==2,2),'b.','MarkerSize',12)
plot(F(:,1),F(:,2),'kx','MarkerSize',15,'LineWidth',3) 
legend('Force 1','Force 2','Centroids')
hold off
% % reshape and crop off NaNs 
%F = reshape(F,16,10,1,[]);
%F = reshape([F; F(17,:)],17,10,[]);
% F = F(1:end-1,:,:);
% % for sake of demonstration, just pick two pages
% F = F(:,:,:371);
% szf = size(F);
% % global sum of F for all pages
% Ft = sum(sum(F,1),2);
% % coordinates of F centroid
% cy = sum((1:szf(1)).'.*sum(F,2))./Ft;
% cx = sum((1:szf(2)).*sum(F,1))./Ft;
% imshow(F,[]); hold on
% plot(cx,cy,'*','markersize',20)
% hold off