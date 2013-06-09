InfiniteScrollPicker
====================

InfiniteScrollPicker is a subclass of UIScrollView and providing infinite scrolling and size scaling for central items (refer to screenshot). This is a control that I wrote for Emodex (https://itunes.apple.com/app/emodex/id598162115?mt=8) and now I refactorred the code and open-source it to everyone. I am not going to maintain this control anymore. If you find any bug or idea to implement, please help to improve if you loved it. I appreciate for the help.  
  
[Video Demo](http://www.youtube.com/watch?v=-3Rq3ycxjs8)  
  
![ScreenShot](https://raw.github.com/Seitk/InfiniteScrollPicker/master/screenshot0.png) &nbsp; ![ScreenShot](https://raw.github.com/Seitk/InfiniteScrollPicker/master/emodex.jpg)   

Usage  
setImageAry - Basically you init the InfiniteScrollPicker with frame, set image array for it and add it to your view then everything is working. 

setItemSize - By default the item size is equal to your image size, but you can still set item size to specify another size for the item.  
Remarks: This control assumes all images in the array have the same size.  
  
setAlphaOfobjs - By default the item alpha is 1.0. You can configure the item alpha to have a highlighted feel. (Except the selected item, it's alpha is always 1.0)  
  
setPositionRatio - I am not going to talk a lot on it, but bascially it affects the alignment of items. PositionRatio = 1.0 (align bottom), PositionRatio = 2.0 (vertical align center), PositionRatio = itemSize.height (vertical align top)  
  
setHeightOffset - give offset to the scrolling items. It calculates from bottom to top.  
  
  
Item selection callback  
I was decided to make a delegate for this control but I need to subscribe to UIScrollViewDelegate in the picker view. So it is not allowed to have another delegate. At the result, it perform a selector when item snapped. You should implement the method in the view controller. It gives you an UIImage then you could calculate the selected index from the image array you passed in.
\- (void)infiniteScrollPicker:(InfiniteScrollPicker *)infiniteScrollPicker didSelectAtImage:(UIImage *)image  
  
    
Example  
  
InfiniteScrollPicker *isp = [[InfiniteScrollPicker alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];  
[isp setItemSize:CGSizeMake(50, 50)];  
[isp setImageAry:set1];  
[self.view addSubview:isp];  
  
InfiniteScrollPicker *isp3 = [[InfiniteScrollPicker alloc] initWithFrame:CGRectMake(0, 240, 320, 210)];  
[isp3 setImageAry:set3];  
[isp3 setHeightOffset:20];  
[isp3 setPositionRatio:2];  
[isp3 setAlphaOfobjs:0.8];  
[self.view addSubview:isp3];  
  
  
Contact Me  
You can add me on Facebook - http://www.facebook.com/seitkk
