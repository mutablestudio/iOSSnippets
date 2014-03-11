/*
 *  http://en.wikipedia.org/wiki/Knuth_shuffle
 *
 *  Basic shuffle of a finite set, in this case an NSArray myList
 */

- (void)shuffle
{
    for (NSUInteger i=[myList count]; i>1; i--) {
        NSUInteger j = random_below(i);
        [myList exchangeObjectAtIndex:i-1 withObjectAtIndex:j];
    }
}