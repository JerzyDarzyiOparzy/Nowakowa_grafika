clear; clf;

img = double(imread('rzeczka.jpg'));
img_output = zeros(222,333,3);

for i = 1:size(img_output,1)
  for j = 1:size(img_output,2)
    x_in = round( 1 + ( (i-1) * (size(img, 1)-1) ) / (size(img_output, 1)-1));
    y_in = round( 1 + ( (j-1) * (size(img, 2)-1) ) / (size(img_output, 2)-1));

    img_output(i,j,1) = img(x_in,y_in,1);
    img_output(i,j,2) = img(x_in,y_in,2);
    img_output(i,j,3) = img(x_in,y_in,3);
  endfor
endfor

imshow(img/255);
figure;
imshow(img_output/255);
