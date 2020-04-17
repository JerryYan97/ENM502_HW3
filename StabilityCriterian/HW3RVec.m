% ThisStepGuessVec: TSGVec;
% preSolVec: PSVec
function[RVec] = HW3RVec(TSGVec, PSVec, timeStep, a, b, c, d, p, q)
    RVec = zeros(2,1);
    RVec(1) = TSGVec(1) - timeStep * ((a - b * TSGVec(2)) * TSGVec(1) - p * TSGVec(1) * TSGVec(1)) - PSVec(1);
    RVec(2) = TSGVec(2) - timeStep * ((c * TSGVec(1) - d) * TSGVec(2) - q * TSGVec(2) * TSGVec(2)) - PSVec(2);
end