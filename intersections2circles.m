% (xCircle1,yCircle1), radiusCircle1 & (xCircle2,yCircle2), radiusCircle2 - centre & radii of 2 circles
% intersections - coordinates of intersections, one intersection per row; there will be 0, 1 or 2 rows

function intersections = intersections2circles(radiusCircle1,xCircle1,yCircle1,radiusCircle2,xCircle2,yCircle2)

    d = sqrt((xCircle2 - xCircle1)^2 + (yCircle2 - yCircle1)^2);

    if d > radiusCircle1 + radiusCircle2 || d < abs(radiusCircle1 - radiusCircle2) || d == 0

        intersections = [];

        return;
    end

    a = (radiusCircle1^2 - radiusCircle2^2 + d^2) / (2 * d);

    h = sqrt(radiusCircle1^2 - a^2);

    xMid = xCircle1 + a * (xCircle2 - xCircle1) / d;
    yMid = yCircle1 + a * (yCircle2 - yCircle1) / d;

    xOffset = h * (yCircle2 - yCircle1) / d;
    yOffset = h * (xCircle2 - xCircle1) / d;

    xIntersect1 = xMid + xOffset;
    yIntersect1 = yMid - yOffset;

    xIntersect2 = xMid - xOffset;
    yIntersect2 = yMid + yOffset;

    intersections = [xIntersect1, yIntersect1; xIntersect2, yIntersect2];
    
end
