rng(0,'twister');
stddev = 1;
mean = 0;
set1 = stddev.*randn(100,1) + mean;
set2 = stddev.*randn(1000,1) + mean;
set3 = stddev.*randn(100000,1) + mean;
hold on;
h1=histfit(set1);
set(h1(1),'facecolor',[0.5,0.2,0.2]); 
set(h1(1),'FaceAlpha',0.3);
%set(h1(2),'LegendInformation','IconDisplayStyle','off');
%legend('Sample set');
%hold on
h2=histfit(set2);
set(h2(1),'facecolor',[0.2,0.5,0.5]);
set(h2(1),'FaceAlpha',0.4);
%hold off
%hold on
h3=histfit(set3);
set(h3(1),'facecolor',[0.5,0.5,0.5]);
set(h3(1),'FaceAlpha',0.4);
hold off