#import "XData.h"

@implementation XSchool
- (void)decode:(id)json
{
	NSDictionary *dict = json;
	_name = [dict objectForKey:@"name"];

	NSMutableArray *tmp_students = [[NSMutableArray alloc] init];
	NSArray *students = [dict objectForKey:@"students"];
	for (int i = 0; i != students.count; ++i) {
		[tmp_students addObject:[[XStudent alloc] initWithJSON:students[i]]];
	}
	_students = tmp_students;
}

- (id)encode
{
	NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
	if (_name != nil) {
		[dict setObject:_name forKey:@"name"];
	}

	NSMutableArray *tmp_students = [[NSMutableArray alloc] init];
	for (int i = 0; i != _students.count; ++i) {
		[tmp_students addObject:[_students[i] encode]];
	}
	[dict setObject:tmp_students forKey:@"students"];
	return dict;
}
@end