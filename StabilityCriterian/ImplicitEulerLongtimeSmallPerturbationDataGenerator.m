a = 1;
b = 1;
c = 1;
d = 1;
p = 0;
q = 0;

parameters = [a, b, c, d, p, q];

t = 0;
timestep = 0.01;
Eco = [1.00000; 1.00000];
perturbation = [-0.00001; 0.00001];
Eco = Eco + perturbation;
idx = 1;
EcoRecord(idx, 1) = Eco(1);
EcoRecord(idx, 2) = Eco(2);
tArray(idx) = t;
idx = idx + 1;
while idx <= 330556
    Eco = ImplicitEulerInterpolation(Eco, timestep, 0.001, parameters);
    t = t + timestep;
    EcoRecord(idx, 1) = Eco(1);
    EcoRecord(idx, 2) = Eco(2);
    tArray(idx, 1) = t;
    idx = idx + 1;
end

save('ImplicitPhase_1_1_50000.mat', 'EcoRecord');