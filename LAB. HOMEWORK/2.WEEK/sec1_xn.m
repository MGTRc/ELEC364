function [out] = sec1_xn(n)
    if (n<0) && (n>=-6)
        out = 0;
    elseif (n>=0) && (n<=5)
        out = 1;
    else
        out = 0;
    end
end

