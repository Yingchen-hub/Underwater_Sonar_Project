% Sonar signal simulation
fs = 50000;  % Sampling frequency 50kHz
t = 0:1/fs:0.01;  % Time axis, duration of 10 milliseconds
f0 = 20000;  % Sonar signal frequency 20kHz
sonar_signal = sin(2*pi*f0*t);  % Generate sine wave

% Add white noise to simulate underwater noise environment
noise = 0.2*randn(size(t));
noisy_signal = sonar_signal + noise;

% Plot sonar signal
figure;
subplot(2,1,1);
plot(t, sonar_signal);
title('Original Sonar Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, noisy_signal);
title('Noisy Sonar Signal');
xlabel('Time (s)');
ylabel('Amplitude');
