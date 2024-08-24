function [matrix] = initialize_weights(L_prev, L_next)
  % L_prev -> the number of units in the previous layer
  % L_next -> the number of units in the next layer

  % matrix -> the matrix with random values
  
  % TODO: initialize_weights implementation
  epsilon = sqrt(6) / sqrt(L_prev + L_next); % formula lui epsilon
  %creez o matrice care are cu o linie mai mult ca sa acopere termenul de bias
  %rand va baga in matrice elemente intre 0 si 1 si le voi "scala" cu epsilon 
  matrix = rand(L_next, L_prev + 1) * epsilon;
endfunction
