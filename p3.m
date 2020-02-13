rng(0,'twister');
a = -2;
b = 2;
r = (b-a).*rand(100000,1) + a;
p = (b-a).*rand(100000,1) + a;
%r_range = [min(-2) max(2)];
hold on;
for i = 1:length(r)
    if (r(i) >= -1) && (r(i) <= 1)
        r(i)=abs(r(i));
        fprintf('Inside if ');
    else
        fprintf('0?');
        r(i)=0;
    end
    
end

%java.lang.Thread.sleep(duration*10000);

h2=histfit(r(2:length(r)));
set(h2(1),'facecolor',[0.2,0.5,0.5]);
set(h2(1),'FaceAlpha',0.5);
%%h = histogram(r);
%hs=histogram(r);
%set(hs(1),'FaceAlpha',0.5);
hold off;