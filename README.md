# OLKCover

终目前在bgm rank50进行回归。  
这个程序可以生成一个one last kiss风格的图片，用于低分辨率的头像效果还行。  
「さようなら、全てのエヴァンゲリオン」  

The theme OST "One Last Kiss" by Utada Hikaru is fanscinating, and so is its cover. The two matlab files try to generate a One Last Kiss style picture from a given image, which is a tiny commemoration to the end of this lengendary series, and to many's youth as well.

The colormap.m file produces a colormap which is visually similar to that in the origin cover. And OLKCover.m employes Canny Edge detector to extract edges in the input file, later fill in the edges with colors in our defined colormap.


An example:
<div align=center>
<img src="https://raw.githubusercontent.com/XichongLing/OLKCover/master/img/shinji.jpg" width="375" height = "375"/>
</div>
<div align = center>
<img src="https://raw.githubusercontent.com/XichongLing/OLKCover/master/img/OLKshinji.png" width = "375" height = "375"/>
</div>
