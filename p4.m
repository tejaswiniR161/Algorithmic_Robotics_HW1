rng(0,'twister');
stddev = 1;
mean = 0;
set1 = stddev.*randn(100000,1) + mean;


stddev = 0.5;
mean = 2;
set2 = stddev.*randn(100000,1) + mean;
set3=rand(100000,1);
p=[0.3 0.7];

%for i = 1:2
    for j = 1:length(set1)
        set1(j)=min(-5,max(5,set1(j)));
        set1(j)=set1(j)*p(1);
    end
    for j = 1:length(set2)
        set1(j)=min(-5,max(5,set1(j)));
        set2(j)=set2(j)*p(2);
    end
%end
for j = 1:length(set2)
        set3(j)=set2(j)+set1(j);
end

hold on;
%h1=histfit(set1);
%set(h1(1),'facecolor',[0.5,0.2,0.2]); 
%set(h1(1),'FaceAlpha',0.3);
%h2=histfit(set2);
%set(h2(1),'facecolor',[0.2,0.5,0.5]);
%set(h2(1),'FaceAlpha',0.4);
h3=histfit(set3);
set(h3(1),'facecolor',[0.5,0.5,0.5]);
set(h3(1),'FaceAlpha',0.4);
hold off