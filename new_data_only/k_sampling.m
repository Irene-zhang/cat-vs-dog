num_sample = 9000;
k_input = zeros(num_sample,128);

sum_len = sum(des_length);
for i = 1:num_sample
    rand_num = randi(sum_len);
    k_input(i,1:128) = sift_des(rand_num,1:128);
end
