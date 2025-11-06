% (xCircle1,yCircle1), radiusCircle1 & (xCircle2,yCircle2), radiusCircle2 - centre & radii of 2 circles
% (xPoint,yPoint) - point
% (xOnCircle,yOnCircle) - closest point on one of the circles
% select - which circle is closest (1 or 2)

function [xOnCircle, yOnCircle, select] = closestPointsOnCircle(xCircle1,yCircle1,radiusCircle1,xCircle2,yCircle2,radiusCircle2,xPoint,yPoint)

    distToCircle1 = sqrt((xPoint - xCircle1)^2 + (yPoint - yCircle1)^2);
    distToCircle2 = sqrt((xPoint - xCircle2)^2 + (yPoint - yCircle2)^2);

    if distToCircle1 < distToCircle2

        select = 1;

        xClosest = xCircle1;
        yClosest = yCircle1;

        radiusClosest = radiusCircle1;

    else

        select = 2;

        xClosest = xCircle2;
        yClosest = yCircle2;

        radiusClosest = radiusCircle2;
    end

    angle = atan2(yPoint - yClosest, xPoint - xClosest);

    xOnCircle = xClosest + radiusClosest * cos(angle);
    yOnCircle = yClosest + radiusClosest * sin(angle);
    
end

