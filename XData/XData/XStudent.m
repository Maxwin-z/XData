#import "XData.h"

@implementation XStudent
- (void)decode:(id)json
{
	NSDictionary *dict = json;
	_name = [dict objectForKey:@"name"];

	_age = [[dict objectForKey:@"age"] intValue];
}

- (id)encode
{
	NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
	if (_name != nil) {
		[dict setObject:_name forKey:@"name"];
	}

	[dict setObject:@(_age) forKey:@"age"];
	return dict;
}
@end