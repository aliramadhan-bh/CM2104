% (xCircle1,yCircle1), (xCircle2,yCircle2), (xCircle3,yCircle3) - centres of 3 circles
% matrixT - translation matrix
% matrixR - rotation matrix
% matrixCombined - translation and rotation matrix

function [matrixT, matrixR, matrixCombined] = transformationMatrices(xCircle1, yCircle1, xCircle2, yCircle2, xCircle3, yCircle3)

    matrixT = [1, 0, -xCircle3; 
               0, 1, -yCircle3; 
               0, 0, 1];

    dx = xCircle2 - xCircle1;
    dy = yCircle2 - yCircle1;

    angle = atan2(dy, dx); 

    angle = angle + pi/2;


    matrixR = [cos(angle), -sin(angle), 0;
               sin(angle),  cos(angle), 0;
               0,            0,           1];

    matrixCombined = matrixR * matrixT;
end
