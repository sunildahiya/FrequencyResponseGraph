function [SMat] = TToSMat(TMat)
	SMat = zeros(2,2);
	SMat(1,1) = TMat(1,2);
	SMat(1,2) = TMat(1,1)*TMat(2,2)-TMat(1,2)*TMat(2,1);
	SMat(2,1) = 1;
	SMat(2,2) = -TMat(2,1);
	SMat = SMat./TMat(2,2);
end
