% (xCircle,yCircle), radiusCircle - centre & radius of circle
% (xPoint1,yPoint1), (xPoint2,yPoint2), (xPoint3,yPoint3) - points on the circumference of the circle

function [xCircle, yCircle, radiusCircle] = circleSolve(p1,p2,p3)

    x1 = p1(1); y1 = p1(2);
    x2 = p2(1); y2 = p2(2);
    x3 = p3(1); y3 = p3(2);

    xMid1 = (x1 + x2) / 2;
    yMid1 = (y1 + y2) / 2;
    xMid2 = (x1 + x3) / 2;
    yMid2 = (y1 + y3) / 2;

    slope1 = (y2 - y1) / (x2 - x1);
    slope2 = (y3 - y1) / (x3 - x1);

    mPerp1 = -1 / slope1;
    mPerp2 = -1 / slope2;

    c1 = yMid1 - mPerp1 * xMid1;
    c2 = yMid2 - mPerp2 * xMid2;

    xCircle = (c2 - c1) / (mPerp1 - mPerp2);
    yCircle = mPerp1 * xCircle + c1;
   
    radiusCircle = sqrt((xCircle - x1)^2 + (yCircle - y1)^2);
end
