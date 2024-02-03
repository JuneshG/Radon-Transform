%% Test to make sure that a single path is parameterized properly
theta = pi/3;
r = .5;

handle = ParameterizePathAtRadiusAndAngle(r,theta);
start_point = handle(-1);
end_point = handle(1);


figure(1);
clf;
plot([-1,1,1,-1,-1],[1,1,-1,-1,1],'k');
hold('all');
plot([start_point(1),end_point(1)],[start_point(2),end_point(2)]);
legend('Domain','Single path')

xlim([-2,2]);
ylim([-2,2])
pbaspect([1,1,1]);



%% Test to make sure that all plots are made properly
n_r = 25;


r_s = linspace(-sqrt(2),sqrt(2),n_r);

start_points = zeros(2,n_r);
end_points = zeros(2,n_r);
for i = 1:n_r
    f = ParameterizePathAtRadiusAndAngle(r_s(i),theta);
    start_points(:,i) = f(-sqrt(2));
    end_points(:,i) = f(sqrt(2));
%     end_points(i,:) = 
end


figure(2);
clf;
plot([-1,1,1,-1,-1],[1,1,-1,-1,1],'k');
hold('all');
for i = 1:n_r
    plot([start_points(1,i),end_points(1,i)],[start_points(2,i),end_points(2,i)]);
end
legend('Domain')
xlim([-2,2]);
ylim([-2,2])
pbaspect([1,1,1]);