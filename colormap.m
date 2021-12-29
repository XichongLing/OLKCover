cPoint = [[255,153,18];[255,97,0];[255,99,71];[218,112,214];[0,255,255]];
cPosition = [12,22,32,42,53];

% define a colormap similar to origin picture
colorR = interp1(cPosition,cPoint(:,1),1:64,'linear','extrap');
colorG = interp1(cPosition,cPoint(:,2),1:64,'linear','extrap');
colorB = interp1(cPosition,cPoint(:,3),1:64,'linear','extrap');
colorM = [colorR',colorG',colorB'];
colorM = round(colorM/255 * 10^4)/10^4;
