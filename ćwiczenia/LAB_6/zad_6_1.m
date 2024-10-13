clear;
img = imread('rzeczka.jpg');
obraz = double(img(:, :, 1));
maska = [0 1 0; 0 1 0; 0 1 0];

maska = maska / sum(maska(:));

mM = 1;

[w, h] = size(obraz); [mw, mh] = size(maska); wynik = zeros(w, h);

obrazZMarginesem = zeros(w + 2 * mM, h + 2 * mM);
obrazZMarginesem(mM+1:end-mM, mM+1:end-mM) = obraz;

obrazZMarginesem(1, :) = obrazZMarginesem(2, :);
obrazZMarginesem(end, :) = obrazZMarginesem(end-1, :);
obrazZMarginesem(:, 1) = obrazZMarginesem(:, 2);
obrazZMarginesem(:, end) = obrazZMarginesem(:, end-1);

for i = 1:w
    for j = 1:h
        wynik(i, j) = sum((obrazZMarginesem(i:i+mw-1, j:j+mh-1) .* maska)(:));
    end
end


subplot(1, 2, 1); imshow(obraz / 255); title('Org');
subplot(1, 2, 2); imshow(wynik / 255); title('Zmieniony');

