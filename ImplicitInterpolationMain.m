a = 1;
b = 1;
c = 1;
d = 1;
p = 0;
q = 0;

parameters = [a, b, c, d, p, q];

t = 0;
timestep = 0.001;
Eco = [3; 2];
idx = 1;
EcoRecord(idx, 1) = Eco(1);
EcoRecord(idx, 2) = Eco(2);
tArray(idx) = t;
idx = idx + 1;
while t < 100
    Eco = ImplicitEulerInterpolation(Eco, timestep, 0.001, parameters);
    t = t + timestep;
    EcoRecord(idx, 1) = Eco(1);
    EcoRecord(idx, 2) = Eco(2);
    tArray(idx) = t;
    idx = idx + 1;
end

[rowSize, colSize] = size(EcoRecord);

xArray = zeros(rowSize, 1);
yArray = zeros(rowSize, 1);

for i = 1:rowSize
    xArray(i) = EcoRecord(i, 1);
    yArray(i) = EcoRecord(i, 2);
end

plot(tArray, xArray, tArray, yArray);
save('ImplicitRecord.mat', 'EcoRecord');
