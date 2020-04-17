% ps == parameter: a, b, c, d, p, q
function[ynAddOne] = ImplicitEulerInterpolation(yn, timeStep, tolerance, ps)
    ynAddOne = yn;
    error = 10000;
    while(error > tolerance)
        J = HW3Jacobi(ynAddOne, timeStep, ps(1), ps(2), ps(3), ps(4), ps(5), ps(6));
        R = HW3RVec(ynAddOne, yn, timeStep, ps(1), ps(2), ps(3), ps(4), ps(5), ps(6));
        deltaY = J \ (-R);
        ynAddOne = ynAddOne + deltaY;
        error = norm(deltaY)/norm(ynAddOne);
    end
end