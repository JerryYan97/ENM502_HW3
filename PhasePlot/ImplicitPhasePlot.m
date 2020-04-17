load('ImplicitPhase_04_05_8.mat');
IP0405 = EcoRecord;
load('ImplicitPhase_1_1_8.mat');
IP11 = EcoRecord;
load('ImplicitPhase_4_5_12.mat');
IP45 = EcoRecord;
load('ImplicitPhase_9_01_14.mat');
IP901 = EcoRecord;

[IP0405_R_Size, IP0405_C_Size] = size(IP0405);
for idx = 1:IP0405_R_Size
    IP0405_X(idx) = IP0405(idx, 1);
    IP0405_Y(idx) = IP0405(idx, 2);
end

[IP11_R_Size, IP11_C_Size] = size(IP11);
for idx = 1:IP11_R_Size
    IP11_X(idx) = IP11(idx, 1);
    IP11_Y(idx) = IP11(idx, 2);
end

[IP45_R_Size, IP45_C_Size] = size(IP45);
for idx = 1:IP45_R_Size
    IP45_X(idx) = IP45(idx, 1);
    IP45_Y(idx) = IP45(idx, 2);
end

[IP901_R_Size, IP901_C_Size] = size(IP901);
for idx = 1:IP901_R_Size
    IP901_X(idx) = IP901(idx, 1);
    IP901_Y(idx) = IP901(idx, 2);
end

plot(IP0405_X, IP0405_Y, '.', IP11_X, IP11_Y, '.', IP45_X, IP45_Y, '.', IP901_X, IP901_Y, '.');