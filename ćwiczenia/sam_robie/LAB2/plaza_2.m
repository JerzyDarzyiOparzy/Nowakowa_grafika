img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

rs = reshape(obraz, [], 3);

figure;
subplot(2, 2, 1);
hist(rs(:), 100);
title('R+G+B');

subplot(2, 2, 2);
hist(rs(:, 1), 100);
title('R');

subplot(2, 2, 3);
hist(rs(:, 2), 100);
title('G');

subplot(2, 2, 4);
hist(rs(:, 3), 100);
title('B');
