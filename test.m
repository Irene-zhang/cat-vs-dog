length = size(des_length);
bow = zeros(100,numCluster);
%construct index vector for testing images
idx = pdist_idx(sift_des,C);

bow = fun_bow(bow,length,des_length,idx,numCluster);

test_result = result;

%predlabel=predict(model1, bow);
%accuracy=sum(predlabel==result)./length;
%[predicted, accuracy, decision_values] = svmpredict(result, bow, model);

