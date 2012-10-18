#import "JpMasuidriveTiEvernoteapiRelatedResultProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"

#import "JpMasuidriveTiEvernoteapiNoteProxy.h"
#import "JpMasuidriveTiEvernoteapiNotebookProxy.h"
#import "JpMasuidriveTiEvernoteapiTagProxy.h"


#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMRelatedResult)
- (id)createRelatedResult:(id)args
{
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    EDAMRelatedResult* thrift_object = [[[EDAMRelatedResult alloc] init] autorelease];
    JpMasuidriveTiEvernoteapiRelatedResultProxy* proxy = [[[JpMasuidriveTiEvernoteapiRelatedResultProxy alloc] initWithObject: thrift_object] autorelease];
    if(args) {
        id val;

        val = [args objectForKey:@"notes"];
        if(val) {
            [proxy setNotes:val];
        }

        val = [args objectForKey:@"notebooks"];
        if(val) {
            [proxy setNotebooks:val];
        }

        val = [args objectForKey:@"tags"];
        if(val) {
            [proxy setTags:val];
        }

    }
    return proxy;
}
@end


@implementation JpMasuidriveTiEvernoteapiRelatedResultProxy
@synthesize object;

- (id)initWithObject:(EDAMRelatedResult*)thrift_object
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
        arrayMap(object.notes, ^(id item) { return [[[JpMasuidriveTiEvernoteapiNoteProxy alloc] initWithObject: item] autorelease]; }), @"notes",
        arrayMap(object.notebooks, ^(id item) { return [[[JpMasuidriveTiEvernoteapiNotebookProxy alloc] initWithObject: item] autorelease]; }), @"notebooks",
        arrayMap(object.tags, ^(id item) { return [[[JpMasuidriveTiEvernoteapiTagProxy alloc] initWithObject: item] autorelease]; }), @"tags",
    nil];
}


- (id)notes
{
    return arrayMap(object.notes, ^(id item) { return [[[JpMasuidriveTiEvernoteapiNoteProxy alloc] initWithObject: item] autorelease]; });
}

- (void)setNotes:(id)value
{
    object.notes = arrayMap(value, ^(id item) { return ((JpMasuidriveTiEvernoteapiNoteProxy*)item).object; });
}


- (id)notebooks
{
    return arrayMap(object.notebooks, ^(id item) { return [[[JpMasuidriveTiEvernoteapiNotebookProxy alloc] initWithObject: item] autorelease]; });
}

- (void)setNotebooks:(id)value
{
    object.notebooks = arrayMap(value, ^(id item) { return ((JpMasuidriveTiEvernoteapiNotebookProxy*)item).object; });
}


- (id)tags
{
    return arrayMap(object.tags, ^(id item) { return [[[JpMasuidriveTiEvernoteapiTagProxy alloc] initWithObject: item] autorelease]; });
}

- (void)setTags:(id)value
{
    object.tags = arrayMap(value, ^(id item) { return ((JpMasuidriveTiEvernoteapiTagProxy*)item).object; });
}



@end
