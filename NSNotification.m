
/*
 *  NSNotification add / post.  Add to receive, post to send to all receivers.  
 *
 *  p.s. Notification overuse is a common syndrome, so avoid it!  Use delegates and / or
 *  completion blocks for single callback requirements.  NSNotification for publish/subscribe.
 *
 */

[[NSNotificationCenter defaultCenter] addObserver:self
                                         selector:@selector(preferredContentSizeChanged:)
                                             name:UIContentSizeCategoryDidChangeNotification
                                           object:nil];

[[NSNotificationCenter defaultCenter] postNotificationName:UIContentSizeCategoryDidChangeNotification
                                                    object:rName];