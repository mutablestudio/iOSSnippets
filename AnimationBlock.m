//  animate a view using blocks
//
[UIView animateWithDuration:3.3
         animations:^{
             self.view.frame = CGRectMake(10.0,10.0,20.0,20.0);
         }
         completion:^(BOOL finished){
             //do something on completion
         }];