%% Plot for track2
%% figure 1 plots location of track2

figure(1)

tbl=readtable("track2.csv");
p=geoscatter(tbl,"lat","lon","filled");
p.SizeData=2;


geobasemap streets

hold on

q=geoplot(32.9963535,-96.62589883,"k*","MarkerSize",10); %% starting point

hold on

r=geoplot(32.9962475,-96.62624633,"r*","MarkerSize",10); %% end point

legend([q r],["Start","End"],'Location','best') %% adding the legend

hold on

xa=[.7048 .6583];  %% adding an arrow to indicate the direction of travel
ya=[.8251 .8611];
annotation('arrow',xa,ya)

title('Second track for data collection', 'interpreter','latex')








