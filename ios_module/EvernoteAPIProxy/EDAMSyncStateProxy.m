#import "EDAMSyncStateProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"



#import "JpMasuidriveTiEvernoteapiModule.h"
@interface JpMasuidriveTiEvernoteapiModule(EDAMSyncState)
-(id)createSyncState:(id)args;
@end

@implementation JpMasuidriveTiEvernoteapiModule(EDAMSyncState)
-(id)createSyncState:(id)args
{
    return [[[EDAMSyncStateProxy alloc] initWithObject: [[[EDAMSyncState alloc] init] autorelease]] autorelease];
}
@end


@implementation EDAMSyncStateProxy
@synthesize object;


-(id)currentTime
{
    return NUMLONG(object.currentTime);
}

-(void)setCurrentTime:(id)value
{
    object.currentTime = [value longValue];
}

-(id)fullSyncBefore
{
    return NUMLONG(object.fullSyncBefore);
}

-(void)setFullSyncBefore:(id)value
{
    object.fullSyncBefore = [value longValue];
}

-(id)updateCount
{
    return NUMINT(object.updateCount);
}

-(void)setUpdateCount:(id)value
{
    object.updateCount = [value integerValue];
}

-(id)uploaded
{
    return NUMLONG(object.uploaded);
}

-(void)setUploaded:(id)value
{
    object.uploaded = [value longValue];
}


- (id)initWithObject:(EDAMSyncState*)object_
{
    if(self = [super init]){
        self.object = object_;
    }
    return self;
}

- (void)dealloc
{
    self.object = nil;
    [super release];
}
@end
