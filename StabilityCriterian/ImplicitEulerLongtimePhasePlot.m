load('ImplicitPhase_1_1_50000.mat');
IP45 = EcoRecord;

[IP45_R_Size, IP45_C_Size] = size(IP45);
for idx = 1:IP45_R_Size
    IP45_X(idx) = IP45(idx, 1);
    IP45_Y(idx) = IP45(idx, 2);
end


plot(IP45_X, IP45_Y, '-');