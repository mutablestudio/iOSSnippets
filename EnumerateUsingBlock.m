//collection enumeration
[arrayOrOther enumerateObjectsUsingBlock:^(id object, NSUInteger idx, BOOL *stop) {
  NSLog(@"%@", object);
}];

