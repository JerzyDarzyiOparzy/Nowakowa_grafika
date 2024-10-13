img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

[liczba_wierszy, liczba_kolumn, liczba_kanalow] = size(obraz);

macierz = zeros(liczba_wierszy, 2 * liczba_kolumn, liczba_kanalow);

macierz(:, 1:liczba_kolumn, :) = obraz;

lustrzane_obraz = obraz(:, end:-1:1, :);
macierz(:, liczba_kolumn + 1:end, :) = lustrzane_obraz;

imshow(macierz/255);


