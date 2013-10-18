#import "XBaseData.h"

@class XStudent;
@interface XSchool : XBaseData
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSArray* students;
@end