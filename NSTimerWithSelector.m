/*
 *  NSTimer with selector and bool to switch on / off.
 *
 */

- (void) toggle
{
    if (timer)
    {
        [timer invalidate];
        timer = nil;
    }
    else
    {
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1f target:self selector:@selector(doSomething) userInfo:nil repeats:YES];
    }
}