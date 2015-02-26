
images = dir('/Users/irenezhang/Downloads/train/*.jpg');

sift_des = zeros(600000,128);
des_length = zeros(1000,1);
result = zeros(1000,1);
name = zeros(1000,1);

index = 1;
a = 40;

img_idx = randperm(15000,1000);

for i = 1:5000
  if img_idx(i)< 7500
    I = imread(images(img_idx(i)+2500).name);
    name(i) = img_idx(i)+2500;
  else
    I = imread(images(img_idx(i)+7500).name); 
    name(i) = img_idx(i)+7500;
    result(i) = 1;
  end
    I = single(rgb2gray(I)) ;
    
    [f,d] = vl_sift(I) ;
    d = d.';
    f = f.';
    size_des = size(d);
    sift_des(index:(index+size_des(1)-1),1:128) = d;
    index = index + size_des;
    des_length(i) = size_des(1);
end
