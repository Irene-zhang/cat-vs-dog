
train_len = 5000;               
numCluster = 35;
length = size(des_length);%# of images
bow = zeros(train_len,numCluster);


fprintf('clustering\n');
[~,C] = kmeans(k_input,numCluster);          
fprintf('clustering done\n');


idx = pdist_idx(sift_des,C);
                                            
%construct bow for training model
bow = fun_bow(bow,length,des_length,idx,numCluster);

addpath(genpath('libsvm/matlab/'));
%model = svmtrain(result, bow);
%model1 = fitcknn(bow,result,'NumNeighbors',5);
