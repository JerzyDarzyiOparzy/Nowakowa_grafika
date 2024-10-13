img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

zmieniony = obraz;

max_value = max(obraz(:));
min_value = min(obraz(:));

do_posortowania = obraz(:);
posortowana = sort(do_posortowania);

we_min = posortowana(round(length(posortowana) * 0.1));
we_max = posortowana(round(length(posortowana) * 0.9));

zmieniony(zmieniony < we_min) = 0;
zmieniony(zmieniony > we_max) = 255;

zmieniony = (zmieniony - we_min) / (we_max - we_min) * 255;

rs = reshape(zmieniony, [], 3);

figure;

subplot(3, 2, 1);
imshow(obraz/255);
title('org');

subplot(3, 2, 2);
imshow(zmieniony/255);
title('zmieniony');

subplot(3, 2, 3);
hist(rs(:), 0:250);
xlim([0, 300]);
title('R+G+B');

subplot(3, 2, 4);
hist(rs(:, 1), 0:250);
xlim([0, 300]);
title('R+G+B');

subplot(3, 2, 5);
hist(rs(:, 2), 0:250);
xlim([0, 300]);
title('G');

subplot(3, 2, 6);
hist(rs(:, 3), 0:250);
xlim([0, 300]);
title('B');
