load('FixedScaleErrorData.mat');

[xER, yER] = size(ErrorRecord);

for idx = 1:xER
    tArray(idx - 29) = ErrorRecord(idx, 1);
    errorArray(idx - 29) = ErrorRecord(idx, 2);
end

plot(tArray, errorArray, '.');
