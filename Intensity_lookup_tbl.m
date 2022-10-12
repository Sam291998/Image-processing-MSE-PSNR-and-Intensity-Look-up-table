%Samson David Puthenpeedika

%% Intensity Lookup table

[A,map]=imread("spine.tif");            % read the indexed image with the associated colormap

mx = 1+max(A(:));

subplot(2,2,1)
rgbplot(map(1:mx,:));                   % the colormap functions of all color channels with the corresponding color

subplot(2,2,2)
imshow(A,map);                          % the image with the colormap


subplot(2,2,3)
imhist(A);                              %  the image histogram with the same x-axis limits of the colormap functions


subplot(2,2,4)
imshow(A,gray(double(mx)));             % w the image using the default linear mapping with the display range the same as the index value range




