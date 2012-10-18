#import "JpMasuidriveTiEvernoteapiRelatedResultSpecProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"



#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMRelatedResultSpec)
- (id)createRelatedResultSpec:(id)args
{
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    EDAMRelatedResultSpec* thrift_object = [[[EDAMRelatedResultSpec alloc] init] autorelease];
    JpMasuidriveTiEvernoteapiRelatedResultSpecProxy* proxy = [[[JpMasuidriveTiEvernoteapiRelatedResultSpecProxy alloc] initWithObject: thrift_object] autorelease];
    if(args) {
        id val;

        val = [args objectForKey:@"maxNotes"];
        if(val) {
            [proxy setMaxNotes:val];
        }

        val = [args objectForKey:@"maxNotebooks"];
        if(val) {
            [proxy setMaxNotebooks:val];
        }

        val = [args objectForKey:@"maxTags"];
        if(val) {
            [proxy setMaxTags:val];
        }

    }
    return proxy;
}
@end


@implementation JpMasuidriveTiEvernoteapiRelatedResultSpecProxy
@synthesize object;

- (id)initWithObject:(EDAMRelatedResultSpec*)thrift_object
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
        NUMLONG(object.maxNotes), @"maxNotes",
        NUMLONG(object.maxNotebooks), @"maxNotebooks",
        NUMLONG(object.maxTags), @"maxTags",
    nil];
}


- (id)maxNotes
{
    return NUMLONG(object.maxNotes);
}

- (void)setMaxNotes:(id)value
{
    object.maxNotes = [value longValue];
}


- (id)maxNotebooks
{
    return NUMLONG(object.maxNotebooks);
}

- (void)setMaxNotebooks:(id)value
{
    object.maxNotebooks = [value longValue];
}


- (id)maxTags
{
    return NUMLONG(object.maxTags);
}

- (void)setMaxTags:(id)value
{
    object.maxTags = [value longValue];
}



@end
