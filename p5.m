rng(0,'twister');
stddev = 0.5;
mean = 1;
set1 = stddev.*randn(1000,1) + mean;
set2 = stddev.*randn(100000,1) + mean;

yset1 = stddev.*randn(1000,1) + mean;
yset2 = stddev.*randn(100000,1) + mean;

   for j = 1:length(set1)
        %set1(j)=min(-3,max(3,set1(j)));
   end
   
   for j = 1:length(set2)
        %set2(j)=min(-3,max(3,set2(j)));
   end
    yset1 = set1.^2;
    yset2 = set2.^2;
   %yset1 = yset1.*randn(1000,1) + mean;
   %for j = 1:length(set1)
   %     yset1(j)=set1(j)*set1(j);
   %end
   
   %for j = 1:length(set2)
    %    set2(j)=min(-3,max(3,set2(j)));
   %end
   %x = linspace(0,1000);
    y = [0,20];

   for j = 1:length(set1)
       x = set1(j);
        line(x,y)
   end

hold on;
%h1=histfit(set1);
%set(h1(1),'facecolor',[0.5,0.2,0.2]); 
%set(h1(1),'FaceAlpha',0.5);

%h2=histfit(yset1);
%set(h2(1),'facecolor',[0.2,0.5,0.5]);
%set(h2(1),'FaceAlpha',0.5);

%h3=histfit(set2);
%set(h3(1),'facecolor',[0.5,0.5,0.5]);
%set(h3(1),'FaceAlpha',0.5);

%h4=histfit(yset2);
%set(h4(1),'facecolor',[0.7,0.7,0.5]);
%set(h4(1),'FaceAlpha',0.5);

hold off