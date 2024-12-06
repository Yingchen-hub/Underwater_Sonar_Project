% 生成 bathymetry.csv 格式的模拟数据，模拟河流局部弯曲地形
numPoints = 1200; % 生成 1200 个数据点

% 模拟 X 坐标，沿河流长度方向
x = linspace(0, 10, numPoints)'; % X 方向从 0 到 10 米

% 模拟 Y 坐标，使其沿 X 方向形成弯曲分布
y = 1.0 * sin(0.3 * x) + 0.3 * randn(numPoints, 1); % 沿 X 方向生成弯曲的 Y 分布

% 模拟深度值，沿 Y 方向逐渐加深，模拟河流从岸边到水域的渐变
depth = 1.5 + 1.5 * (abs(y) / max(abs(y))) + 0.2 * randn(numPoints, 1);
depth = max(0, depth); % 保证深度非负

% 模拟时间戳（从某一固定时间开始，每条记录相隔 100 毫秒）
timestamp = int64(1.725e+12 + (1:numPoints)' * 100);

% 模拟温度（假设在 15 到 25 摄氏度的范围）
temperature = 15 + 10 * rand(numPoints, 1);

% 创建表格并保存为 CSV 文件
bathymetryData = table(x, y, depth, timestamp, temperature, ...
    'VariableNames', {'Latitude', 'Longitude', 'Depth', 'Timestamp', 'Temperature'});

% 保存为 bathymetry 模拟数据文件
writetable(bathymetryData, '/Users/a3020428278/Downloads/scan_data (1)/bathymetry_modified.csv');
