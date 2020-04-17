a = 1;
b = 1;
c = 1;
d = 1;
p = 0;
q = 0;

parameters = [a, b, c, d, p, q];

t = 0;
timestep = 0.001;
Eco = [9; 0.1];
idx = 1;
EcoRecord(idx, 1) = Eco(1);
EcoRecord(idx, 2) = Eco(2);
tArray(idx) = t;
idx = idx + 1;
while t < 14.7
    Eco = ImplicitEulerInterpolation(Eco, timestep, 0.001, parameters);
    t = t + timestep;
    EcoRecord(idx, 1) = Eco(1);
    EcoRecord(idx, 2) = Eco(2);
    tArray(idx, 1) = t;
    idx = idx + 1;
end

save('ImplicitPhase_9_01_14.mat', 'EcoRecord');
