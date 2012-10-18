#import "JpMasuidriveTiEvernoteapiClientUsageMetricsProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"



#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMClientUsageMetrics)
- (id)createClientUsageMetrics:(id)args
{
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    EDAMClientUsageMetrics* thrift_object = [[[EDAMClientUsageMetrics alloc] init] autorelease];
    JpMasuidriveTiEvernoteapiClientUsageMetricsProxy* proxy = [[[JpMasuidriveTiEvernoteapiClientUsageMetricsProxy alloc] initWithObject: thrift_object] autorelease];
    if(args) {
        id val;

        val = [args objectForKey:@"sessions"];
        if(val) {
            [proxy setSessions:val];
        }

    }
    return proxy;
}
@end


@implementation JpMasuidriveTiEvernoteapiClientUsageMetricsProxy
@synthesize object;

- (id)initWithObject:(EDAMClientUsageMetrics*)thrift_object
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
        NUMLONG(object.sessions), @"sessions",
    nil];
}


- (id)sessions
{
    return NUMLONG(object.sessions);
}

- (void)setSessions:(id)value
{
    object.sessions = [value longValue];
}



@end
