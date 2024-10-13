img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

we_min = min(obraz(:));
we_max = max(obraz(:));

zmieniony = 255 * (obraz - we_min) / (we_max - we_min);

rs = reshape(zmieniony, [], 3);

figure;
subplot(3, 2, 1);
imshow(obraz/255);
title('org');

subplot(3, 2, 2);
imshow(zmieniony/255);
title('zmieniony');

subplot(3, 2, 3);
hist(rs(:),100);
title('R+G+B');

subplot(3, 2, 4);
hist(rs(:, 1),100);
title('R');

subplot(3, 2, 5);
hist(rs(:, 2),100);
title('G');

subplot(3, 2, 6);
hist(rs(:, 3),100);
title('B');


