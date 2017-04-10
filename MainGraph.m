%Multiplexing filter for communication system
%ABCDMat(1,1) = 1 - (w^2)*1.618*0.618;
%ABCDMat(1,2) = (1i)*w*1.618;
%ABCDMat(2,1) = (1i)*w*0.618;
%ABCDMat(2,2) = 1;

n = 500;
wAxis = linspace(-10, 10, n);
Hf = zeros(1, n);
ABCDMat = zeros(2,2);
SMat1 = zeros(2,2);
SMat2 = zeros(2,2);
SMat3 = zeros(2,2);
SMat4 = zeros(2,2);
SMat5 = zeros(2,2);
TMat1 = zeros(2,2);
TMat2 = zeros(2,2);
TMat3 = zeros(2,2);
TMat4 = zeros(2,2);
TMat5 = zeros(2,2);
TMatO = zeros(2,2);

for k=1:n
	w = wAxis(1,k);
    ABCDMat = findABCDMat(w, 1.4142, 1.4142);
    SMat1 = ABCDToSMat(ABCDMat);
    TMat1 = SToTMat(SMat1);
    ABCDMat = findABCDMat(w, 1.9318, 1.9318);
    SMat2 = ABCDToSMat(ABCDMat);
    TMat2 = SToTMat(SMat2);
    ABCDMat = findABCDMat(w, 0.5176, 1.4142);
    SMat3 = ABCDToSMat(ABCDMat);
    TMat3 = SToTMat(SMat3);
    ABCDMat = findABCDMat(w, 1.4142, 1.782);
    SMat4 = ABCDToSMat(ABCDMat);
    TMat4 = SToTMat(SMat4);
    ABCDMat = findABCDMat(w, 0.3129, 0.908);
    SMat5 = ABCDToSMat(ABCDMat);
    TMat5 = SToTMat(SMat5);
    TMatO = TMat1;
    Hf(1,k) = 0.5/TMatO(2,2);
    Hf(1,k) = 20*log10(sqrt(real(Hf(1,k))^2 + imag(Hf(1,k))^2));
end

plot(wAxis, Hf);


