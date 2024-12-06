% Generate example sonar data
x = linspace(-50, 50, 100);  % Distance in x direction
y = linspace(-50, 50, 100);  % Distance in y direction
[X, Y] = meshgrid(x, y);  % Create a grid
Z = -10 + 3*sin(sqrt(X.^2 + Y.^2) / 10);  % Simulate seabed terrain (Z-axis)

% Plot 3D terrain map
figure;
surf(X, Y, Z);  % 3D terrain plot
title('3D Seabed Terrain');
xlabel('X Direction (m)');
ylabel('Y Direction (m)');
zlabel('Depth (m)');
colormap('parula');
shading interp;  % Smooth shading

