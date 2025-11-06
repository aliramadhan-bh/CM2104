% (xCircle1,yCircle1) & (xCircle2,yCircle2) - centre of 2 circles
% (xPoint1,yPoint1) - point on the circumference of circle #1
% radiusCircle2 - radius of circle #2

function radiusCircle2 = radiusTangentialCircle(xCircle1, yCircle1, xPoint1, yPoint1, xCircle2, yCircle2)

    radiusCircle1 = sqrt((xPoint1 - xCircle1)^2 + (yPoint1 - yCircle1)^2);

    distanceBetweenCenters = sqrt((xCircle2 - xCircle1)^2 + (yCircle2 - yCircle1)^2);

    if distanceBetweenCenters >= radiusCircle1

        radiusCircle2 = distanceBetweenCenters - radiusCircle1;

    else

        radiusCircle2 = NaN; 
        
    end
end
