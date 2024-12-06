% Read sonar data file
data = load('sonar_data.txt');  % Assume the data is in a txt file, with data in a 2D array format

% Extract sonar signal (adjust based on the actual data format)
range_data = data(:, 1);  % Range data
amplitude_data = data(:, 2);  % Amplitude data

% Data processing - Denoising
filtered_data = medfilt1(amplitude_data, 5);  % Median filter for denoising

% Data visualization
figure;
plot(range_data, filtered_data);
title('Filtered Sonar Echo Signal');
xlabel('Range (m)');
ylabel('Signal Amplitude');

