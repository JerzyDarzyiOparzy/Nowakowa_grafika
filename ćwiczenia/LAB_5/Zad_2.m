clear;
img = imread('rzeczka.jpg');
obraz = double(img) / 255;

R_zeskalowany = obraz(:, :, 1);
G_zeskalowany = obraz(:, :, 2);
B_zeskalowany = obraz(:, :, 3);

[H, S, L] = rgb_to_hsl(R_zeskalowany, G_zeskalowany, B_zeskalowany, obraz);

[R, G, B] = hsl_to_rgb(H, S, L);

obrazek = cat(3, R, G, B) / 255;

porownanie_v_2 = porownanie_v_2_z_mnoznikiem(img, obrazek, 1000000);
porownanie_v_PS = porownanie_v_PS_z_mnoznikiem(img, obrazek, 1000000);

roznica_modulu = max(abs(obraz(:) - obrazek(:)));

fprintf('Maksymalny moduł różnicy: %f\n', roznica_modulu);

figure;

subplot(1, 2, 1);imshow(porownanie_v_PS);title('porownanie v.PS * 1000000');
subplot(1, 2, 2);imshow(porownanie_v_2);title('porownanie v.2 * 1000000');


