clear;
img = imread('rzeczka.jpg');
obraz = double(img);
maska = [5, 6, 5; 6, 6, 6; 5, 6, 5];

maska = maska / sum(maska(:));

[w, h, k] = size(obraz); [mw, mh] = size(maska); wynik = zeros(w, h, 3);

mM = 1;

margines_rgb = zeros(w + 2 * mM, h + 2 * mM, k);
margines_rgb(mM + 1:end - mM, mM + 1:end - mM, :) = obraz;

margines_rgb(1, :, :) = margines_rgb(2, :, :);
margines_rgb(end, :, :) = margines_rgb(end-1, :, :);
margines_rgb(:, 1, :) = margines_rgb(:, 2, :);
margines_rgb(:, end, :) = margines_rgb(:, end-1, :);


for c = 1:k
    for i = 1:w
        for j = 1:h
            wynik(i, j, c) = sum((margines_rgb(i:i+mw-1, j:j+mh-1, c) .* maska)(:));

        end
    end
end

subplot(1, 2, 1); imshow(obraz / 255); title('Org');
subplot(1, 2, 2); imshow(wynik / 255); title('Rozmyty');

