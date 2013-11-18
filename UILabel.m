/*
 *  UILabel with most commonly used properties plus some others, including
 *  a rect to size the height properly
 *
 */

CGRect hRect = [lblText boundingRectWithSize:CGSizeMake(120, 40)
                                                         options:NSStringDrawingUsesLineFragmentOrigin
                                                      attributes:@{NSFontAttributeName:[UIFont fontWithName:@"Helvetica" size:14]}
                                                         context:nil];
CGRect titleFrame = CGRectMake(10.0, 6.0, 120, hRect.size.height);

UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 120.0, 30.0)];
label.frame = titleFrame;
label.backgroundColor = [UIColor clearColor];
label.font = [UIFont fontWithName:@"Helvetica" size:kHeaderFontSizeForTiles];
label.shadowColor = [UIColor whiteColor];
label.shadowOffset = CGSizeMake(0.0, -1.0);
label.textColor = [UIColor blackColor];
label.text = lblText;
label.adjustsFontSizeToFitWidth=YES;
label.minimumScaleFactor=0.5;
[view addSubview:label];