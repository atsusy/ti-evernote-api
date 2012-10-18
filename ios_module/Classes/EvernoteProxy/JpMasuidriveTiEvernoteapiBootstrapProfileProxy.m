#import "JpMasuidriveTiEvernoteapiBootstrapProfileProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"

#import "JpMasuidriveTiEvernoteapiBootstrapSettingsProxy.h"


#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMBootstrapProfile)
- (id)createBootstrapProfile:(id)args
{
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    EDAMBootstrapProfile* thrift_object = [[[EDAMBootstrapProfile alloc] init] autorelease];
    JpMasuidriveTiEvernoteapiBootstrapProfileProxy* proxy = [[[JpMasuidriveTiEvernoteapiBootstrapProfileProxy alloc] initWithObject: thrift_object] autorelease];
    if(args) {
        id val;

        val = [args objectForKey:@"name"];
        if(val) {
            [proxy setName:val];
        }

        val = [args objectForKey:@"settings"];
        if(val) {
            [proxy setSettings:val];
        }

    }
    return proxy;
}
@end


@implementation JpMasuidriveTiEvernoteapiBootstrapProfileProxy
@synthesize object;

- (id)initWithObject:(EDAMBootstrapProfile*)thrift_object
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
        object.name, @"name",
        [[[JpMasuidriveTiEvernoteapiBootstrapSettingsProxy alloc] initWithObject: object.settings] autorelease], @"settings",
    nil];
}


- (id)name
{
    return object.name;
}

- (void)setName:(id)value
{
    object.name = [TiUtils stringValue:value];
}


- (id)settings
{
    return [[[JpMasuidriveTiEvernoteapiBootstrapSettingsProxy alloc] initWithObject: object.settings] autorelease];
}

- (void)setSettings:(id)value
{
    object.settings = ((JpMasuidriveTiEvernoteapiBootstrapSettingsProxy*)value).object;
}



@end
