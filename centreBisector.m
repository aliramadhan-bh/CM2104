% m,c - parameters of line y = mx + c bisecting centre points
% (xCircle1,yCircle1), (xCircle2,yCircle2) - centres of 2 circles

function [m, c] = centreBisector(xCircle1,yCircle1,xCircle2,yCircle2)

    xMid = (xCircle1 + xCircle2) / 2;
    yMid = (yCircle1 + yCircle2) / 2;

    if xCircle2 ~= xCircle1
        slope = (yCircle2 - yCircle1) / (xCircle2 - xCircle1);
        m = -1 / slope;
    else
        m = inf; 
    end
  
    if isinf(m)
        c = xMid; 
    else
        c = yMid - m * xMid;
    end
end
