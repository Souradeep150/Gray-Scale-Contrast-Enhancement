clear all;
clc;
for i=1:1

 N=2; 
 max_it=2; 
 FCheck=1; R=1;
 tag=0; % 1: minimization, 0: maximization
 rand('seed', sum(100*clock));
 
 
 clear all;
pkg load image
im=imread('kodim20.png');
im=rgb2gray(im);
imt=imread('image20.png');
imt=rgb2gray(imt);
 
[row col]=size(imt);
Ib=im2double(imt);

 [Fbest,Lbest,BestValues,MeanValues]=AEFA(Ib,2,2,1,0,1);Fbest,
 
%  semilogy(BestValues,'--r');
%  title(['\fontsize{12}\bf F',num2str(func_num)]);
%  xlabel('\fontsize{12}\bf Iteration');ylabel('\fontsize{12}\bf Best-so-far');
%  legend('\fontsize{10}\bf AEFA',1);
end