clear;
img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

min_obraz = min(obraz(:));
max_obraz = max(obraz(:));

przeskalowany = double(255 * (obraz - min_obraz) / (max_obraz - min_obraz));

R = przeskalowany(:, :, 1);

%srednia = floor(mean(R(:)));

macierz = reshape(R, size(R, 1) * size(R, 2), 1);

srednia = floor(mean(macierz));

punkt = [0, 0; srednia, 0; 255, 255];

LUT = (0:255);

for i = 1:length(punkt) - 1
  x1 = punkt(i, 1);
  x2 = punkt(i + 1, 1);
  y1 = punkt(i, 2);
  y2 = punkt(i + 1, 2);

  a = (y2 - y1) / (x2 -x1);
  b = y1 - a * x1;

  for x = x1:x2
    y = a * x + b;
    LUT(x + 1) = y;
  end
end

img_out = LUT(round(przeskalowany) + 1);

imshow(img_out/255); disp([0:255; LUT]);




