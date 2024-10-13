clear; clf;

img = double(imread('zrzut_1.png'));
img_output = zeros(400,400,3);

for i = 1:size(img_output,1)
  for j = 1:size(img_output,2)
    x_in = round( 1 + ( (i-1) * (size(img, 1)-1) ) / (size(img_output, 1)-1));
    y_in = round( 1 + ( (j-1) * (size(img, 2)-1) ) / (size(img_output, 2)-1));

    img_output(i,j,1) = img(x_in,y_in,1);
    img_output(i,j,2) = img(x_in,y_in,2);
    img_output(i,j,3) = img(x_in,y_in,3);
  endfor
endfor


img_return = zeros(285,603,3);

for i = 1:size(img_return,1)
  for j = 1:size(img_return,2)
    x_in = round( 1 + ( (i-1) * (size(img_output, 1)-1) ) / (size(img_return, 1)-1));
    y_in = round( 1 + ( (j-1) * (size(img_output, 2)-1) ) / (size(img_return, 2)-1));

    img_return(i,j,1) = img_output(x_in,y_in,1);
    img_return(i,j,2) = img_output(x_in,y_in,2);
    img_return(i,j,3) = img_output(x_in,y_in,3);
  endfor
endfor


imshow(img/255);
figure;
imshow(img_return/255);
