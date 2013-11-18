/*
 *  Thread safe YO!  Singleton patter with thread safe dispatch.
 *
 */

+ (ClassName *)sharedClassName {
    static id sharedClassName = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClassName = [[self alloc] init];
    });
    return sharedClassName;
}

/*
 *  Don't forget the .h declaration
 *
 */

+ (ClassName *)sharedClassName;
