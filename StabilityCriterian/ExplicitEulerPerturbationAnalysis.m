load('ExplicitPhase_1_1_50000.mat');
Eco = EcoRecord;
load('tArray.mat');
[sizeR, sizeC] = size(Eco);
ExactSol = [1;1];
t = tArray(1);
idx = 1;
while t < 100
    RecordSol(1, 1) = Eco(idx, 1);
    RecordSol(2, 1) = Eco(idx, 2);
    normArray(idx, 1) = norm(RecordSol - ExactSol);
    truncatedTArray(idx, 1)= tArray(idx);
    t = tArray(idx);
    idx = idx + 1;
end

plot(truncatedTArray, normArray, '.');