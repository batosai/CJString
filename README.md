#NSString+CJString

NSString category divers helpers.

##Example usage
Create slug:

	NSString *title = @"My title";
	NSLog(@"%@", [title toSlug]); // return my-title

Count number occurences in string:

	NSString *title = @"My title";
	NSLog(@"%i", [title countOccurencesOfString:@"title"]); // return 1

### Creators
[Jérémy Chaufourier](http://github.com/batosai)
[@chaufourier](https://twitter.com/chaufourier)