x = [-pi:0.1:pi];

figure;
plot(x, abs(sin(x)), '-b')
hold on;
plot(x, atan(x), '-r')
hold off;

legend('abs(sin(x))','atan(x)');
xlabel('IKSY');
ylabel('IGREKI');
title('Bardzo wazny wykres');
