#import "TiUtils.h"
#import "TiThriftUtils.h"
#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (UserStoreConstValues)

-(id)UserStore
{
	id result = [consts objectForKey:@"UserStore"];
	if(!result) {
		result = [NSDictionary dictionaryWithObjectsAndKeys:
			NUMDOUBLE(1.0), @"EDAM_VERSION_MAJOR",
			NUMDOUBLE(22.0), @"EDAM_VERSION_MINOR",

			[NSDictionary dictionaryWithObjectsAndKeys:
				NUMDOUBLE(1), @"GROUP_MEMBER",
				NUMDOUBLE(2), @"GROUP_ADMIN",
				NUMDOUBLE(3), @"GROUP_OWNER",
				nil], @"SponsoredGroupRole",

			nil];
	}
	return result;
}
@end