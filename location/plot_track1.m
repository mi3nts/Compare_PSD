%% Plot for track1
%% figure 1 plots location of track1

figure(1)

tbl=readtable("track1.csv");
p=geoscatter(tbl,"lat","lon","filled");
p.SizeData=2;


geobasemap streets

hold on

q=geoplot(32.9862,-96.6348,"r*","MarkerSize",10); %% starting point

hold on

r=geoplot(32.9962,-96.6255,"k*","MarkerSize",10); %% end point

legend([q r],["Start","End"],'Location','best') %% adding the legend

hold on

xa=[.48 .42];  %% adding an arrow to indicate the direction of travel
ya=[.15 .15];
annotation('arrow',xa,ya)

title('First track for data collection', 'interpreter','latex')