function [ C ] = rand_center( numCluster, sift_des,des_length)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
C = zeros(numCluster,128);
sum_len = sum(des_length);
for i = 1:numCluster
    rand_num = randi(sum_len);
    C(i,1:128) = sift_des(rand_num,1:128);
end

end

