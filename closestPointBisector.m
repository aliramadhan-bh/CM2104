% m,c - parameters of bisector line y = mx + c
% (xOffBisector,yOffBisector) - point not on the bisector line
% (xOnBisector,yOnBisector) - point on the bisector line

function [xOnBisector, yOnBisector] = closestPointBisector(m,c,xOffBisector,yOffBisector)

    if isinf(m)

        xOnBisector = -c; 
        yOnBisector = yOffBisector; 
        
    else
        
        mPerp = -1 / m;
        cPerp = yOffBisector - mPerp * xOffBisector;

        xOnBisector = (cPerp - c) / (m - mPerp);
        yOnBisector = m * xOnBisector + c;

    end
end
