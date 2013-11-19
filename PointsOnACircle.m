/*
 *  Fun with Trigonometry!!  Add points uniformly around a circumference with optional skip.  Circle is
 *  centered in a UIView (container) with same width as parent view.
 *
 *  Comes with no guarantee.  Warranty is null and void.  Habeas Corpus.
 */

UIView *container = [[UIView alloc] initWithFrame:self.frame];

for (int i=0; i<numberOfPoints; i++) {
     //escape if you want certain points empty
//     if((i>=1 && i<=5) || (i>=7 && i<=11))
//         continue;

    //any UIView works here
    UILabel *point = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 2, 2)];
    point.backgroundColor = [UIColor redColor];
    point.tag = i;
     
    //use the bounds of the rect of the circle, pluse some adjustments for spacing
    int radius = (container.bounds.size.width/2)-10;
    int x = (int) ((container.bounds.size.width/2) + radius * cos(2*M_PI * i / numberOfPoints));
    int y = (int) ((container.bounds.size.height/2) + radius * sin(2*M_PI * i / numberOfPoints));
    
    point.frame = CGRectMake(x-16, y-16, 2, 2);
    [container addSubview:point];
}

container.layer.anchorPoint = CGPointMake(0.5f, 0.5f);
container.layer.position = CGPointMake(self.bounds.size.width/2.0+12,
                                       self.bounds.size.height/2.0+12);
container.userInteractionEnabled = NO;
[self addSubview:container];