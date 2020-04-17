a = 1;
b = 1;
c = 1;
d = 1;
p = 0;
q = 0;

t = 0;
timestep = 0.01;
Eco = [4, 5];
idx = 1;
EcoRecord(idx, 1) = Eco(1);
EcoRecord(idx, 2) = Eco(2);
tArray(idx) = t;
idx = idx + 1;
while t < 1000
    Deritative = FunctionDerivative(a, b, c, d, p, q, Eco);
    Eco = ExplicitEulerInterpolation(Eco, Deritative, timestep);
    t = t + timestep;
    if (abs(Eco(1)) > 10000)||(abs(Eco(2)) > 10000)
        break;
    end
    EcoRecord(idx, 1) = Eco(1);
    EcoRecord(idx, 2) = Eco(2);
    tArray(idx) = t;
    idx = idx + 1;
end



save('ExplicitPhase_4_5_100.mat', 'EcoRecord');
