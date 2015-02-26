
images = dir('/Users/irenezhang/Downloads/train/*.jpg');
sift_des = zeros(2000000,128);
sift_des1 = zeros(2000000,128);
sift_loc = zeros(4000000,4);
des_length = zeros(5000,1);
result = zeros(5000,1);

index = 1;
a = 40;

for i = 1:2500
    I = imread(images(i).name);
    I = single(rgb2gray(I)) ;
    [f,d] = vl_sift(I) ;
    d = d.';
    f = f.';
    size_des = size(d);
    sift_des(index:(index+size_des(1)-1),1:128) = d;
    sift_loc(index:(index+size_des(1)-1),1:4) = f;
    index = index + size_des;
    des_length(i) = size_des(1);
    result(i) = 0;
end

for i = 2501:5000
    I = imread(images(i+20000).name);
    I = single(rgb2gray(I)) ;
    [f,d] = vl_sift(I) ;
    d = d.';
    f = f.';
    size_des = size(d);
    a = sum(des_length);
    if a > 2000000
        sift_des1((index-2000074):((index+size_des(1)-2000075)),1:128) = d;
    else
        sift_des(index:(index+size_des(1)-1),1:128) = d;
    end
    sift_loc(index:(index+size_des(1)-1),1:4) = f;
    index = index + size_des;
    des_length(i) = size_des(1);
    result(i) = 1;
end
