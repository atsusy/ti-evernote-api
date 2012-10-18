#import "JpMasuidriveTiEvernoteapiRelatedQueryProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"



#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMRelatedQuery)
- (id)createRelatedQuery:(id)args
{
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    EDAMRelatedQuery* thrift_object = [[[EDAMRelatedQuery alloc] init] autorelease];
    JpMasuidriveTiEvernoteapiRelatedQueryProxy* proxy = [[[JpMasuidriveTiEvernoteapiRelatedQueryProxy alloc] initWithObject: thrift_object] autorelease];
    if(args) {
        id val;

        val = [args objectForKey:@"noteGuid"];
        if(val) {
            [proxy setNoteGuid:val];
        }

        val = [args objectForKey:@"plainText"];
        if(val) {
            [proxy setPlainText:val];
        }

    }
    return proxy;
}
@end


@implementation JpMasuidriveTiEvernoteapiRelatedQueryProxy
@synthesize object;

- (id)initWithObject:(EDAMRelatedQuery*)thrift_object
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
        object.noteGuid, @"noteGuid",
        object.plainText, @"plainText",
    nil];
}


- (id)noteGuid
{
    return object.noteGuid;
}

- (void)setNoteGuid:(id)value
{
    object.noteGuid = [TiUtils stringValue:value];
}


- (id)plainText
{
    return object.plainText;
}

- (void)setPlainText:(id)value
{
    object.plainText = [TiUtils stringValue:value];
}



@end
