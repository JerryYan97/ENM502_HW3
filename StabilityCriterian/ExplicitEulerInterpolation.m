function[ynAddOne] = ExplicitEulerInterpolation(yn, fyn, timeStep)
    ynAddOne = yn + fyn * timeStep;
end