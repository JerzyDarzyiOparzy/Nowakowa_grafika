clear;
img = imread('rzeczka.jpg');
obraz = double(img);

R = obraz(:, :, 1);
srednia = floor(mean(R(:)));

punkt_R = [0, 0; srednia, 0; 255, 255];

function LUT = LUT_czerwony(srednia, punkt)
  LUT = (0:255);

  for i = 1:length(punkt) - 1
    x1 = punkt(i, 1);
    y1 = punkt(i, 2);
    x2 = punkt(i + 1, 1);
    y2 = punkt(i + 1, 2);

    a = (y2 - y1) / (x2 - x1);
    b = y1 - a * x1;

    for x = x1:x2
      y = a * x + b;
      LUT(x + 1) = y;
    end
  end
end

function wyjscie = zastosuj_LUT(wejscie, LUT_czerwony)
  wyjscie = LUT_czerwony(round(wejscie) + 1);
end

LUT = LUT_czerwony(srednia, punkt_R);
img_out = zastosuj_LUT(obraz, LUT);


imshow(img_out/255); disp([0:255; LUT]);
