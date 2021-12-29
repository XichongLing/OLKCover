original = imread('./shinji.jfif');
Igray = rgb2gray(original);
Igray = imresize(Igray,1);
%Iedge = edge(Igray,'Canny',[.1 .2],2);
Iedge = edge(Igray,'Canny');

% colormap(jet(1000));



% Gradient color filling
map = colorM;
ISize = size(Igray);
gradientMap = zeros([ISize(1),ISize(2),3]);
for row = 1:ISize(1)
    for col = 1:ISize(2)
%         gradientMap(row,col,:) = map(round(size(map,1)-(row+col)/(ISize(1)+ISize(2)) * size(map,1) + 1),:);
    rgb = round((row+col)/(ISize(1)+ISize(2)) * size(map,1));
    if rgb == 0
        rgb = 1;
    end
    gradientMap(row,col,:) = map(rgb,:);
    end
end

% merge images
OLKVer = zeros(size(gradientMap));
for row = 1:ISize(1)
    for col = 1:ISize(2)
        if Iedge(row,col) == 0
            OLKVer(row,col,:) = [1,1,1];
        else
            OLKVer(row,col,:) = gradientMap(row,col,:);
        end
    end
end
imshow(OLKVer);



