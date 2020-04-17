load('ImplicitPhase_1_1_50000.mat');
EcoImplicit = EcoRecord;
load('ExplicitPhase_1_1_50000.mat');
EcoExplicit = EcoRecord;

load('tArray.mat');

ExactSol = [1;1];
t = tArray(1);
idx = 1;
while t < 100
    RecordImplicitSol(1, 1) = EcoImplicit(idx, 1);
    RecordImplicitSol(2, 1) = EcoImplicit(idx, 2);
    
    RecordExplicitSol(1, 1) = EcoExplicit(idx, 1);
    RecordExplicitSol(2, 1) = EcoExplicit(idx, 2);
    
    normExplicitArray(idx, 1) = norm(RecordExplicitSol - ExactSol);
    
    normImplicitArray(idx, 1) = norm(RecordImplicitSol - ExactSol);
    
    truncatedTArray(idx, 1)= tArray(idx);
    t = tArray(idx);
    idx = idx + 1;
end

plot(truncatedTArray, normExplicitArray, '.', truncatedTArray, normImplicitArray, '.');