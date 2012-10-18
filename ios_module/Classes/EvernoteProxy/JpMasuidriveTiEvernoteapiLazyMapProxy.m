#import "JpMasuidriveTiEvernoteapiLazyMapProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"



#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMLazyMap)
- (id)createLazyMap:(id)args
{
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    EDAMLazyMap* thrift_object = [[[EDAMLazyMap alloc] init] autorelease];
    JpMasuidriveTiEvernoteapiLazyMapProxy* proxy = [[[JpMasuidriveTiEvernoteapiLazyMapProxy alloc] initWithObject: thrift_object] autorelease];
    if(args) {
        id val;

        val = [args objectForKey:@"keysOnly"];
        if(val) {
            [proxy setKeysOnly:val];
        }

        val = [args objectForKey:@"fullMap"];
        if(val) {
            [proxy setFullMap:val];
        }

    }
    return proxy;
}
@end


@implementation JpMasuidriveTiEvernoteapiLazyMapProxy
@synthesize object;

- (id)initWithObject:(EDAMLazyMap*)thrift_object
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
        [arrayMap(object.keysOnly, ^(id item) { return item; }) allObjects], @"keysOnly",
        dictionaryMap(object.fullMap, ^(id key, id obj) {
        return [NSArray arrayWithObjects: key, obj, nil];
    }), @"fullMap",
    nil];
}


- (id)keysOnly
{
    return [arrayMap(object.keysOnly, ^(id item) { return item; }) allObjects];
}

- (void)setKeysOnly:(id)value
{
    object.keysOnly = [arrayMap(value, ^(id item) { return [TiUtils stringValue:item]; }) allObjects];
}


- (id)fullMap
{
    return dictionaryMap(object.fullMap, ^(id key, id obj) {
        return [NSArray arrayWithObjects: key, obj, nil];
    });
}

- (void)setFullMap:(id)value
{
    object.fullMap = dictionaryMap(value, ^(id key, id obj) {
        return [NSArray arrayWithObjects: key, obj, nil];
    });
}



@end
