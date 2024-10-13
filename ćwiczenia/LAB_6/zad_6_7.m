clear;
img = imread('rzeczka.jpg');
obraz = double(img);

obraz_szary = mean(obraz, 3);
maska = [-1, -1, 0; -1, 0, 1; 0, 1, 1];

[w, h] = size(obraz_szary); [mw, mh] = size(maska); wynik = zeros(w, h);

mM = 1;

margines_szary = zeros(w + 2 * mM, h + 2 * mM);
margines_szary(mM + 1:end - mM, mM + 1:end - mM) = obraz_szary;

margines_szary(1, :) = margines_szary(2, :);
margines_szary(end, :) = margines_szary(end-1, :);
margines_szary(:, 1) = margines_szary(:, 2);
margines_szary(:, end) = margines_szary(:, end-1);


for i = 1:w
    for j = 1:h
        wynik(i, j) = sum((margines_szary(i:i+mw-1, j:j+mh-1) .* maska)(:));

    end
end

wynik = wynik + 127.5;

imshow(wynik / 255); title('Emboss');
