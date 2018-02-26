clc; clear all; close all;


str_input_1 = 'Flower';
str_ext = 'avi';
init(str_input_1,str_ext);


ref = imread ('Result/Flower_ref.bmp');
disp_init = imread('Result/Flower_WTA.bmp');


res = perform_jhf(disp_init,ref);
dispMapOutput = mat2gray(res);
imshow(dispMapOutput);