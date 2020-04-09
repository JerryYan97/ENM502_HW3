load('ImplicitRecord.mat');

% Populate data into xArray and yArray:
[rowSize, colSize] = size(EcoRecord);

xArray = zeros(rowSize, 1);
yArray = zeros(rowSize, 1);

for i = 1:rowSize
    xArray(i) = EcoRecord(i, 1);
    yArray(i) = EcoRecord(i, 2);
end

plot(xArray, yArray)