% 带通滤波器设计
low_cutoff = 18000;  % 低截止频率 18kHz
high_cutoff = 22000;  % 高截止频率 22kHz
[b, a] = butter(4, [low_cutoff high_cutoff]/(fs/2), 'bandpass');

% 对带噪声信号进行滤波
filtered_signal = filter(b, a, noisy_signal);

% 绘制滤波后的信号
figure;
plot(t, filtered_signal);
title('滤波后的声呐信号');
xlabel('时间 (s)');
ylabel('幅值');
