img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

R = obraz(:, :, 1);
G = obraz(:, :, 2);
B = obraz(:, :, 3);

we_min_R = min(R(:));
we_max_R = max(R(:));

we_min_G = min(G(:));
we_max_G = max(G(:));

we_min_B = min(B(:));
we_max_B = max(B(:));

zmieniony = obraz;
zmieniony(:, :, 1) = 255 * (R - we_min_R) / (we_max_R - we_min_R);
zmieniony(:, :, 2) = 255 * (G - we_min_G) / (we_max_G - we_min_G);
zmieniony(:, :, 3) = 255 * (B - we_min_B) / (we_max_B - we_min_B);


figure;
subplot(3, 2, 1);
imshow(obraz/255);
title('org');

subplot(3, 2, 2);
imshow(zmieniony/255);
title('zmieniony');

subplot(3, 2, 3);
hist(zmieniony(:, :, :)(:), 100);
title('R+G+B');

subplot(3, 2, 4);
hist(zmieniony(:, :, 1)(:), 100);
title('R');

subplot(3, 2, 5);
hist(zmieniony(:, :, 2)(:), 100);
title('B');

subplot(3, 2, 6);
hist(zmieniony(:, :, 3)(:), 100);
title('B');
