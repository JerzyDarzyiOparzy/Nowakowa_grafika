clear;
img = imread('rzeczka.jpg');
img_double = double(img) / 255;

R = img_double(:, :, 1);
G = img_double(:, :, 2);
B = img_double(:, :, 3);

MaxRGB = max(img_double, [], 3);
MinRGB = min(img_double, [], 3);
Chroma = MaxRGB - MinRGB;

Htemp = zeros(size(Chroma));

Htemp(Chroma <= 0.001) = 0;

index = (MaxRGB == R) & (Chroma > 0.001);
Htemp(index) = mod((G(index) - B(index)) ./ Chroma(index), 6);

index = (MaxRGB == G) & (Chroma > 0.001);
Htemp(index) = (B(index) - R(index)) ./ Chroma(index) + 2;

index = (MaxRGB == B) & (Chroma > 0.001);
Htemp(index) = (R(index) - G(index)) ./ Chroma(index) + 4;

H = Htemp * 60;
L = (MaxRGB + MinRGB) / 2;

S = zeros(size(L));

index = (L > 0.001) & (L < 0.999);
S(index) = Chroma(index) ./ (1 - abs(2 * L(index) - 1));

figure;
subplot(2, 2, 1); imshow(img); title('Org');
subplot(2, 2, 2); imshow(H / 360); title('Hue');
subplot(2, 2, 3); imshow(S); title('Saturation');
subplot(2, 2, 4); imshow(L); title('Lightness');

