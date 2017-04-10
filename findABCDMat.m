function [ABCDMat] = findABCDMat(w, L, C)
	ABCDMat = zeros(2,2);
	ABCDMat(1,1) = 1 - (w^2)*L*C;
    ABCDMat(1,2) = (1i)*w*L;
    ABCDMat(2,1) = (1i)*w*C;
    ABCDMat(2,2) = 1;
end
