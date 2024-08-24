function [X_train, y_train, X_test, y_test] = split_dataset(X, y, percent)
  % X -> the loaded dataset with all training examples
  % y -> the corresponding labels
  % percent -> fraction of training examples to be put in training dataset
  
  % X_[train|test] -> the datasets for training and test respectively
  % y_[train|test] -> the corresponding labels
  
  % Example: [X, y] has 1000 training examples with labels and percent = 0.85
  %           -> X_train will have 850 examples
  %           -> X_test will have the other 150 examples

  % TODO: split_dataset implementation
  idx = randperm(size(X,1)); %amestec exemplele
  X = X(idx, :);
  y = y(idx, :);
  
  %numar de antrenamente number_train
  number_train = round(percent * size(X,1));
  
  %antrenamentele
  X_train = X(1:number_train, :); 
  y_train = y(1:number_train);
  %testele
  X_test = X(number_train+1:end,:);
  y_test = y(number_train+1:end);
  
endfunction