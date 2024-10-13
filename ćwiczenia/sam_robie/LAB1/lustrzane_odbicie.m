img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

macierz = zeros(size(obraz,1), 2*size(obraz,2), 3);

macierz(:, 1:size(obraz,2), :) = obraz;

for i = 1:size(obraz)
  macierz(:, size(obraz,2)+1:end, :) =  obraz(:, end:-1:1, :);
end

imshow(macierz/255);
