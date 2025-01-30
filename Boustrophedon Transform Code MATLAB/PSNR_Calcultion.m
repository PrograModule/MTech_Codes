clc;
clear all;
input_img1=imread('C:\Users\Srishti\Desktop\New Folder\sailboat_pad.bmp');
input_img2=imread('C:\Users\SRISHTI\Desktop\New Folder\stego_img.bmp');
[R,C]=size(input_img1);
m=0;
n=0;
m=uint32(m);
n=uint32(n);
diff_pixelval=0;
diff_pixelval=uint32(diff_pixelval);
summation=0;
summation=uint32(summation);
input_img1=double(input_img1);
input_img2=double(input_img2);
for m=1:1:R
    for n=1:1:C
        pixelval1=input_img1(m,n);
        pixelval2=input_img2(m,n);
        diff_pixelval=(pixelval1-pixelval2)^2;
        summation=uint32(uint32(summation)+uint32(diff_pixelval));
        
    end
end
MSE=double(summation)/(R*C);
disp(MSE);
PSNR=double(10*log10(255*255/MSE));
disp(PSNR);