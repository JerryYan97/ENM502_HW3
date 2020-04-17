% ThisStepGuessVec: TSGVec;
function[resJacobiMat] = HW3Jacobi(TSGVec, timeStep, a, b, c, d, p, q)
    resJacobiMat = zeros(2,2);
    resJacobiMat(1,1) = 1 - timeStep * ((a - b * TSGVec(2)) - 2 * p * TSGVec(1));
    resJacobiMat(1,2) = timeStep * b * TSGVec(1);
    resJacobiMat(2,1) = - timeStep * c * TSGVec(2);
    resJacobiMat(2,2) = 1 - timeStep * ((c * TSGVec(1) - d) - 2 * q * TSGVec(2));
end