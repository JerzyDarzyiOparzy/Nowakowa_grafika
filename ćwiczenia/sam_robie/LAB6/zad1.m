clear;
img = imread('rzeczka.jpg');
obraz = double(img);

maska = [5 5 6 5 5; 5 5 6 5 5; 6 6 6 6 6; 5 5 6 5 5; 5 5 6 5 5;];

maska = maska / sum(maska(:));

[w h ~] = size(obraz); wynik = zeros(w, h, 3); [mw mh] = size(maska);

mM = 2;

margines = zeros(w + mM * 2, h + mM * 2, 3);
margines(mM+1:end-mM, mM+1:end-mM, :) = obraz;

margines(1, :, :) = margines(2, :, :) = margines(3, :, :);
margines(:, 1, :) = margines(:, 2, :) = margines(:, 3, :);
margines(end, :, :) = margines(end-mM+1, :, :) = margines(end-mM, :, :);
margines(:, end, :) = margines(:, end-mM+1, :) = margines(:, end-mM, :);

for c = 1:3
    for i = 1:w
        for j = 1:h
            wynik(i, j, c) = sum((margines(i:i+mw-1, j:j+mh-1, c) .* maska)(:));
        end
    end
end

figure;
subplot(1, 2, 1); imshow(obraz / 255); title('org');
subplot(1, 2, 2); imshow(wynik / 255); title('zmieniony');
