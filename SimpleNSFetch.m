/*
 *  NSFetchRequest to load CoreData into an NSArray
 *
 *  context is your NSManagedObjectContext
 */

NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
NSEntityDescription *entity = [NSEntityDescription entityForName:@"UniversityClass"
                                          inManagedObjectContext:context];
[fetchRequest setEntity:entity];
NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];

for (UClass *info in fetchedObjects) {
    NSLog(@"Name: %@", info.name);
    UClass *details = info.details;
    NSLog(@"Room: %@", details.room);
}