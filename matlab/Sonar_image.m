
num_beams = 64;  
range = 50;  
num_pings = 100;  

echo_data = rand(num_pings, num_beams) * range;  

figure;
imagesc(echo_data);
colormap('jet');  
colorbar;
title('Sonar image');
xlabel('direction');
ylabel('"Number of sonar pings"');
