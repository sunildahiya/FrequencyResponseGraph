function [TMat] = SToTMat(SMat)
	TMat = zeros(2,2);
	TMat(1,1) = SMat(1,2)*SMat(2,1)-SMat(1,1)*SMat(2,2);
	TMat(1,2) = SMat(1,1);
	TMat(2,1) = -SMat(2,2);
	TMat(2,2) = 1;
	TMat = TMat./SMat(2,1);
end
