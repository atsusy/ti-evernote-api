#import "JpMasuidriveTiEvernoteapiNoteMetadataProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"

#import "JpMasuidriveTiEvernoteapiNoteAttributesProxy.h"


#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMNoteMetadata)
-(id)createNoteMetadata:(id)args
{
    return [[[JpMasuidriveTiEvernoteapiNoteMetadataProxy alloc] initWithObject: [[[EDAMNoteMetadata alloc] init] autorelease]] autorelease];
}
@end


@implementation JpMasuidriveTiEvernoteapiNoteMetadataProxy
@synthesize object;


-(id)guid
{
    return object.guid;
}

-(void)setGuid:(id)value
{
    object.guid = [TiUtils stringValue:value];
}


-(id)title
{
    return object.title;
}

-(void)setTitle:(id)value
{
    object.title = [TiUtils stringValue:value];
}


-(id)contentLength
{
    return NUMINT(object.contentLength);
}

-(void)setContentLength:(id)value
{
    object.contentLength = [value integerValue];
}


-(id)created
{
    return NUMLONG(object.created);
}

-(void)setCreated:(id)value
{
    object.created = [value longValue];
}


-(id)updated
{
    return NUMLONG(object.updated);
}

-(void)setUpdated:(id)value
{
    object.updated = [value longValue];
}


-(id)updateSequenceNum
{
    return NUMINT(object.updateSequenceNum);
}

-(void)setUpdateSequenceNum:(id)value
{
    object.updateSequenceNum = [value integerValue];
}


-(id)notebookGuid
{
    return object.notebookGuid;
}

-(void)setNotebookGuid:(id)value
{
    object.notebookGuid = [TiUtils stringValue:value];
}


-(id)tagGuids
{
    return arrayMap(object.tagGuids, ^(id item) { return item; });
}

-(void)setTagGuids:(id)value
{
    object.tagGuids = arrayMap(value, ^(id item) { return item; });
}


-(id)attributes
{
    return [[[JpMasuidriveTiEvernoteapiNoteAttributesProxy alloc] initWithObject: object.attributes] autorelease];
}

-(void)setAttributes:(id)value
{
    object.attributes = ((JpMasuidriveTiEvernoteapiNoteAttributesProxy*)value).object;
}


-(id)largestResourceMime
{
    return object.largestResourceMime;
}

-(void)setLargestResourceMime:(id)value
{
    object.largestResourceMime = [TiUtils stringValue:value];
}


-(id)largestResourceSize
{
    return NUMINT(object.largestResourceSize);
}

-(void)setLargestResourceSize:(id)value
{
    object.largestResourceSize = [value integerValue];
}



- (id)initWithObject:(EDAMNoteMetadata*)object_
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