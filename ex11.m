clc;
clear;
x=[8.0,8.1,8.2,8.3,8.4,8.5,8.6,8.7,8.8,8.9,9.0,9.1,9.2,9.3,9.4,...
    9.5,9.6,9.7,9.8,9.9,10,10.1,10.2,10.3,10.4,10.5,10.6,10.7,...
    10.8,10.9,11,11.1,11.2,11.3,11.4,11.5,11.6,11.7,11.8,11.9,12];

y=[-4.24,-4.02,-3.79,-3.57,-3.35,-3.13,-2.91,-2.68,-2.46,-2.25,-2.03,-1.81,-1.60,-1.40,-1.20...
    -0.99,-0.78,-0.58,-0.38,-0.18,-0.02,0.22,0.42,0.62,0.89,1.03,1.23,1.43,...
    1.63,1.83,2.04,2.24,2.46,2.67,2.87,3.03,3.30,3.51,3.73,3.94,4.12];

p=polyfit(x,y,1); % 斜率 截距
z = p(1) * x+p(2); %拟合曲线
result = abs(z -y); %拟合值与实际值 的 差值
max = max(result); % 最大差值
wucha = max/(y(end)-y(1)); % 非线性误差
plot(x,y,x,result,x,z);
