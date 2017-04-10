function [SMat] = ABCDToSMat(ABCDMat)
	SMat = zeros(2,2);
	Da = ABCDMat(1,1)+ABCDMat(1,2)+ABCDMat(2,1)+ABCDMat(2,2);
	SMat(1,1) = ABCDMat(1,1)+ABCDMat(1,2)-ABCDMat(2,1)-ABCDMat(2,2);
	SMat(1,2) = 2*(ABCDMat(1,1)*ABCDMat(2,2)-ABCDMat(1,2)*ABCDMat(2,1));
	SMat(2,1) = 2;
	SMat(2,2) = -ABCDMat(1,1)+ABCDMat(1,2)-ABCDMat(2,1)+ABCDMat(2,2);
	SMat = SMat./Da;
end
