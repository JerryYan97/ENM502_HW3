function[myDerivative] = FunctionDerivative(a, b, c, d, p, q, yn)
    myDerivative(1) = (a - b * yn(2)) * yn(1) - p * yn(1) * yn(1);
    myDerivative(2) = (c * yn(1) - d) * yn(2) - q * yn(2) * yn(2);
end