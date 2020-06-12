
function [F]=benchmark(Ib,X)
  a=X(1);
  b=X(2);
  [row col]=size(Ib);
  for i=1:row
 for j=1:col
    I1(i,j) = double(betainc(Ib(i,j),a,b));   %incomplete beta function
 end
end



for i=1:row
 for j=1:col
I(i,j)=I1(i,j)*255;
end
end


I= uint8(I);

%fitness function
edge_final=edge(I,'canny');
tot_edgeintensity=0;
tot_edgepixel=0;
Id=double(I);

for i=1:row
  for j=1:col
  if(edge_final(i,j)==1)
   tot_edgeintensity=tot_edgeintensity+(Id(i,j));
  tot_edgepixel=tot_edgepixel+1;
  end
end
end
entropy=entropy(I);
image_contrast = max(I(:)) - min(I(:));




F=log(log(tot_edgeintensity))*double(tot_edgepixel)*entropy*double(image_contrast);
%end of fitness function

endfunction