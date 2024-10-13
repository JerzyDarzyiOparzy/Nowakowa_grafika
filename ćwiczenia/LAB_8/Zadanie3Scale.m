clear; clf;

img = double(imread('logo_linuxa.png'));
scale = 10;

for i = 1:round(size(img,1)*scale)
  for j = 1:round(size(img,2)*scale)
    x_in = round( 1 + ( (i-1) * (size(img, 1)-1) ) / (round(size(img,1)*scale)-1));
    y_in = round( 1 + ( (j-1) * (size(img, 2)-1) ) / (round(size(img,2)*scale)-1));

    img_output(i,j,1) = img(x_in,y_in,1);
    img_output(i,j,2) = img(x_in,y_in,2);
    img_output(i,j,3) = img(x_in,y_in,3);
  endfor
endfor

imshow(img/255);
figure;
imshow(img_output/255);
