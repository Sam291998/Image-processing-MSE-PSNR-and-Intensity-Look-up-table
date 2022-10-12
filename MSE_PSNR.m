%Samson David Puthenpeedika

%%  MEASURE OF IMAGE QUALITY

I=imread('eight.tif');                      % input image
B=imnoise(I,"gaussian",0,0.02);             % adding Gaussian noise to input image

mse=immse(B,I);                             % MSE using MATLAB function

N=numel(I);                                 % number of pixels in input image

msd=sum(sum((double(I)-double(B)).^2))/N;   % MSE by definition

disp("MSE between the images by using MATLAB function = "+mse);
disp("MSE between the images by definition= "+msd);

Imax=255;

peaksnr=psnr(B,I);                          % PSNR using MATLAB function

peakSNR=10*log10((Imax^2)/mse);             % PSNR by definition

disp("PSNR between the images by using MATLAB function = "+peaksnr);
disp("PSNR between the images by definition = "+peakSNR);



