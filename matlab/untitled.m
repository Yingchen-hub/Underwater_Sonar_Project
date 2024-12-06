% 声呐信号模拟
fs = 50000;  % 采样频率 50kHz
t = 0:1/fs:0.01;  % 时间轴，持续10毫秒
f0 = 20000;  % 声呐信号频率 20kHz
sonar_signal = sin(2*pi*f0*t);  % 生成正弦波

% 加入白噪声模拟水下噪声环境
noise = 0.2*randn(size(t));
noisy_signal = sonar_signal + noise;

% 绘制声呐信号
figure;
subplot(2,1,1);
plot(t, sonar_signal);
title('原始声呐信号');
xlabel('时间 (s)');
ylabel('幅值');

subplot(2,1,2);
plot(t, noisy_signal);
title('带噪声的声呐信号');
xlabel('时间 (s)');
ylabel('幅值');
