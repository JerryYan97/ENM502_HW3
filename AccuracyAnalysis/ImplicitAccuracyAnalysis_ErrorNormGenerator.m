load('AStepRecord.mat');
load('ImplicitRecord.mat');
[xASR, yASR] = size(AStepRecord);
[xER, yER] = size(EcoRecord);
EcoPointer = 1;
for idx = 1:xASR
    ErrorRecord(idx, 1) = AStepRecord(idx, 3);
    TarTime = AStepRecord(idx, 3);
    % Find corresponding x and y value at a time
    while EcoPointer <= xER
        if(TarTime == EcoRecord(EcoPointer, 3))
            EcoFine(1) = EcoRecord(EcoPointer, 1);
            EcoFine(2) = EcoRecord(EcoPointer, 2);
        end
        EcoPointer = EcoPointer + 1;
    end
    EcoCorase(1) = AStepRecord(idx, 1);
    EcoCorase(2) = AStepRecord(idx, 2);
    ErrorVec = EcoCorase - EcoFine;
    ErrorRecord(idx, 2) = norm(ErrorVec);
end

save('ErrorRecord.mat', 'ErrorRecord');