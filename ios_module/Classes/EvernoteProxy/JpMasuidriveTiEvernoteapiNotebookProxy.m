#import "JpMasuidriveTiEvernoteapiNotebookProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"

#import "JpMasuidriveTiEvernoteapiPublishingProxy.h"


#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMNotebook)
-(id)createNotebook:(id)args
{
    return [[[JpMasuidriveTiEvernoteapiNotebookProxy alloc] initWithObject: [[[EDAMNotebook alloc] init] autorelease]] autorelease];
}
@end


@implementation JpMasuidriveTiEvernoteapiNotebookProxy
@synthesize object;


-(id)guid
{
    return object.guid;
}

-(void)setGuid:(id)value
{
    object.guid = [TiUtils stringValue:value];
}


-(id)name
{
    return object.name;
}

-(void)setName:(id)value
{
    object.name = [TiUtils stringValue:value];
}


-(id)updateSequenceNum
{
    return NUMLONG(object.updateSequenceNum);
}

-(void)setUpdateSequenceNum:(id)value
{
    object.updateSequenceNum = [value longValue];
}


-(id)defaultNotebook
{
    return NUMBOOL(object.defaultNotebook);
}

-(void)setDefaultNotebook:(id)value
{
    object.defaultNotebook = [value boolValue];
}


-(id)serviceCreated
{
    return NUMLONGLONG(object.serviceCreated);
}

-(void)setServiceCreated:(id)value
{
    object.serviceCreated = [value longLongValue];
}


-(id)serviceUpdated
{
    return NUMLONGLONG(object.serviceUpdated);
}

-(void)setServiceUpdated:(id)value
{
    object.serviceUpdated = [value longLongValue];
}


-(id)publishing
{
    return [[[JpMasuidriveTiEvernoteapiPublishingProxy alloc] initWithObject: object.publishing] autorelease];
}

-(void)setPublishing:(id)value
{
    object.publishing = ((JpMasuidriveTiEvernoteapiPublishingProxy*)value).object;
}


-(id)published
{
    return NUMBOOL(object.published);
}

-(void)setPublished:(id)value
{
    object.published = [value boolValue];
}


-(id)stack
{
    return object.stack;
}

-(void)setStack:(id)value
{
    object.stack = [TiUtils stringValue:value];
}


-(id)sharedNotebookIds
{
    return arrayMap(object.sharedNotebookIds, ^(id item) { return item; });
}

-(void)setSharedNotebookIds:(id)value
{
    object.sharedNotebookIds = arrayMap(value, ^(id item) { return item; });
}



- (id)initWithObject:(EDAMNotebook*)object_
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
