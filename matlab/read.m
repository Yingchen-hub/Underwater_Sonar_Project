% 加载 bathymetry 数据
bathymetryData = readtable('/Users/a3020428278/Downloads/scan_data (1)/bathymetry_modified.csv');

% 提取 X, Y 和 Depth 数据
x = bathymetryData.Latitude;
y = bathymetryData.Longitude;
depth = bathymetryData.Depth;

% 创建网格并进行插值
[X, Y] = meshgrid(linspace(min(x), max(x), 200), linspace(min(y), max(y), 100));
Z = griddata(x, y, depth, X, Y, 'natural'); % 插值生成 Z 数据


% --- A 部分：生成简洁清晰的地形图片 ---

% 绘制简洁的地形图
figure('Visible', 'off'); % 隐藏绘图窗口
surf(X, Y, Z); % 使用 surf 函数生成平滑的 3D 地形图
colormap(jet);
shading interp;
axis off; % 关闭坐标轴
axis equal; % 设置等比例显示

% 设置背景颜色为黑色
set(gcf, 'Color', 'k');
set(gca, 'Color', 'k');

% 保存为简洁的图片
exportgraphics(gcf, '/Users/a3020428278/Downloads/scan_data (1)/river_terrain.png', 'BackgroundColor', 'k');


% --- B 部分：生成详细的交互式地形图 ---

% 绘制地形图并调整深度坐标轴方向
figure;
surf(X, Y, Z); % 使用 surf 函数生成平滑的 3D 地形图
colormap(jet);
shading interp;
colorbar;
xlabel('long label (meter)');
ylabel('wide label (meter)');
zlabel('depth (meter)');
title('terrain');
view(3);
axis tight;
set(gca, 'ZDir', 'reverse'); % 将 Z 轴（深度）方向翻转，使越深的值向下
