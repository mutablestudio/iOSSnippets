/*
 *  Check for existing file - also standard code for getting to the app docs directory
 *
 */

- (BOOL)checkForExistingFile:(NSString *)fname
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *filePath = [documentsPath stringByAppendingPathComponent:fname];
    BOOL fileExists = [fileManager fileExistsAtPath:filePath];
    return fileExists;
}