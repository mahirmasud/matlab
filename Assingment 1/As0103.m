%Mohammed Masud Chowdhury Mahir (2215151105)
time = 1:20;
speed = [0,5,10,7,12,8,15,9,14,11,13,10,7,12,8,15,9,14,11,13]; 


plot(time, speed, '-o', 'LineWidth', 2, 'MarkerFaceColor', 'c');


xlabel('Time (Hours)');
ylabel('Internet Speed (Mbps)');
title('Internet Speed Over Time');


avg_speed = mean(speed);
yline(avg_speed, '--r', sprintf('Avg Speed = %.2f Mbps', avg_speed));


disp('Internet speed is fluctuating over time.');

grid on;
