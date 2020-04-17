a = 1;
b = 1;
c = 1;
d = 1;
p = 0;
q = 0;

parameters = [a, b, c, d, p, q];

t = 0;
timestep = 0.0001;
InitEco = [4; 5];
idx = 1;

currTimeStepSize = 0.001;

while currTimeStepSize < 0.1
    AStepEco = ImplicitEulerInterpolation(InitEco, currTimeStepSize, 0.0001, parameters);
    t = currTimeStepSize;
    
    % Produce Exact Eco:
    finnerTimeStep = currTimeStepSize / 10;
    tExact = 0;
    exactEco = InitEco;
    for i = 1:10
        exactEco = ImplicitEulerInterpolation(exactEco, finnerTimeStep, 0.0001, parameters);
        tExact = tExact + finnerTimeStep;
    end
    
    ecoError = norm(AStepEco - exactEco);
    
    ecoErrorRecord(idx, 1) = currTimeStepSize;
    ecoErrorRecord(idx, 2) = ecoError;
    
    idx = idx + 1;
    currTimeStepSize = currTimeStepSize + 0.0001;
end

save('FixedScaleErrorData.mat', 'ecoErrorRecord');