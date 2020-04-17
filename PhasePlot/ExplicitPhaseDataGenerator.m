a = 1;
b = 1;
c = 1;
d = 1;
p = 0;
q = 0;

t = 0;
timestep = 0.001;
Eco = [9, 0.1];
idx = 1;
EcoRecord(idx, 1) = Eco(1);
EcoRecord(idx, 2) = Eco(2);
tArray(idx) = t;
idx = idx + 1;
while t < 14.7
    Deritative = FunctionDerivative(a, b, c, d, p, q, Eco);
    Eco = ExplicitEulerInterpolation(Eco, Deritative, timestep);
    t = t + timestep;
    EcoRecord(idx, 1) = Eco(1);
    EcoRecord(idx, 2) = Eco(2);
    tArray(idx) = t;
    idx = idx + 1;
end


save('ExplicitPhase_9_01_14.mat', 'EcoRecord');
