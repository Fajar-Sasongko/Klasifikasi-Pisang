% X = load('Training_Data.mat'),'train_hsv_glcm';
% Y = load('Training_Data.mat','train_labels');
% data = struct2array(X);
% label = struct2array(Y);


load('Training_Data.mat');
load('Training_Data.mat','train_labels');

data = hsv;
label = train_labels;


Model = fitcknn(data, label, 'NumNeighbors', 9, 'Standardize',1, 'distance','euclidean');
hasil = predict(model,train);

cvmdl = crossval(Model, 'Kfold', 10);
cvmdlloss = kfoldLoss(cvmdl)


predictedLabels = predict(Model,data);
R = confusionmat(predictedLabels,label)


% indices = crossvalind('kfold',labels,10);
% confusionMatrix = cell(1,1);
% errorMat = zeros(1,10);
% for i = 1:10
%     test = (indices==i);
%     train = ~test;
%     kVal = 5;
%     knn = fitcknn(data(train,:),labels(train),'NumNeighbors',kVal);
%     y = knn.predict(data(test,:));
%     index = arrayfun(@strcmp,y,labels(test));
%     errorMat(i) = sum(index)/length(y);
%     confusionMatrix{i} = confusionmat(labels(test),y);
% end
% 
% % Calculate misclassification error
% cvError = 1-mean(errorMat);
% 
% % Generate confusion matrix
% R = cat(3,confusionMatrix{:});
% R = sum(R,3)
