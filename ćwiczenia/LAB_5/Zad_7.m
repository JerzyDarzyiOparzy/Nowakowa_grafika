clear;
img = imread('rzeczka.jpg');
obraz = double(img) / 255;

R_zeskalowany = obraz(:, :, 1);
G_zeskalowany = obraz(:, :, 2);
B_zeskalowany = obraz(:, :, 3);

[H, S, L] = rgb_to_hsl(R_zeskalowany, G_zeskalowany, B_zeskalowany, obraz);

[szerokosc, wysokosc] = size(S);

zmniejszenie_kolumny = linspace(0, 1, szerokosc);
zmniejszenie_wiersze = linspace(0, 1, wysokosc);

S = S .* (zmniejszenie_wiersze);
L = L .* (1 - zmniejszenie_kolumny)';


[R, G, B] = hsl_to_rgb(H, S, L);

obrazek = cat(3, R, G, B) / 255;

imshow(obrazek);title('S,L gradienty * (0->1)');
