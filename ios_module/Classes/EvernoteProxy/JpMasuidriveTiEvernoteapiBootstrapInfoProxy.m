#import "JpMasuidriveTiEvernoteapiBootstrapInfoProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"

#import "JpMasuidriveTiEvernoteapiBootstrapProfileProxy.h"


#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMBootstrapInfo)
- (id)createBootstrapInfo:(id)args
{
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    EDAMBootstrapInfo* thrift_object = [[[EDAMBootstrapInfo alloc] init] autorelease];
    JpMasuidriveTiEvernoteapiBootstrapInfoProxy* proxy = [[[JpMasuidriveTiEvernoteapiBootstrapInfoProxy alloc] initWithObject: thrift_object] autorelease];
    if(args) {
        id val;

        val = [args objectForKey:@"profiles"];
        if(val) {
            [proxy setProfiles:val];
        }

    }
    return proxy;
}
@end


@implementation JpMasuidriveTiEvernoteapiBootstrapInfoProxy
@synthesize object;

- (id)initWithObject:(EDAMBootstrapInfo*)thrift_object
{
    if(self = [super init]){
        self.object = thrift_object;
    }
    return self;
}

- (void)dealloc
{
    self.object = nil;
    [super release];
}

- (NSDictionary*)toHash:(id)args
{
    return [NSDictionary dictionaryWithObjectsAndKeys:
        arrayMap(object.profiles, ^(id item) { return [[[JpMasuidriveTiEvernoteapiBootstrapProfileProxy alloc] initWithObject: item] autorelease]; }), @"profiles",
    nil];
}


- (id)profiles
{
    return arrayMap(object.profiles, ^(id item) { return [[[JpMasuidriveTiEvernoteapiBootstrapProfileProxy alloc] initWithObject: item] autorelease]; });
}

- (void)setProfiles:(id)value
{
    object.profiles = arrayMap(value, ^(id item) { return ((JpMasuidriveTiEvernoteapiBootstrapProfileProxy*)item).object; });
}



@end
