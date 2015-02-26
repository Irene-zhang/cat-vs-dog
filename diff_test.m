predicted_label = zeros(1000,21);
accuracy = zeros(21);
decision_values = zeros(1000,21);
for i = 1:21
model = ['model' num2str(i)];
[predicted_label(:,i), accuracy(i), decision_values(:,i)] = svmpredict(result, bow, model, '-b 1');
end