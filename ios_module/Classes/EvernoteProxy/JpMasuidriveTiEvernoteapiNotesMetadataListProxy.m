#import "JpMasuidriveTiEvernoteapiNotesMetadataListProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"

#import "JpMasuidriveTiEvernoteapiNoteMetadataProxy.h"


#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMNotesMetadataList)
-(id)createNotesMetadataList:(id)args
{
    return [[[JpMasuidriveTiEvernoteapiNotesMetadataListProxy alloc] initWithObject: [[[EDAMNotesMetadataList alloc] init] autorelease]] autorelease];
}
@end


@implementation JpMasuidriveTiEvernoteapiNotesMetadataListProxy
@synthesize object;


-(id)startIndex
{
    return NUMLONG(object.startIndex);
}

-(void)setStartIndex:(id)value
{
    object.startIndex = [value longValue];
}


-(id)totalNotes
{
    return NUMLONG(object.totalNotes);
}

-(void)setTotalNotes:(id)value
{
    object.totalNotes = [value longValue];
}


-(id)notes
{
    return arrayMap(object.notes, ^(id item) { return [[[JpMasuidriveTiEvernoteapiNoteMetadataProxy alloc] initWithObject: item] autorelease]; });
}

-(void)setNotes:(id)value
{
    object.notes = arrayMap(value, ^(id item) { return ((JpMasuidriveTiEvernoteapiNoteMetadataProxy*)item).object; });
}


-(id)stoppedWords
{
    return arrayMap(object.stoppedWords, ^(id item) { return item; });
}

-(void)setStoppedWords:(id)value
{
    object.stoppedWords = arrayMap(value, ^(id item) { return item; });
}


-(id)searchedWords
{
    return arrayMap(object.searchedWords, ^(id item) { return item; });
}

-(void)setSearchedWords:(id)value
{
    object.searchedWords = arrayMap(value, ^(id item) { return item; });
}


-(id)updateCount
{
    return NUMLONG(object.updateCount);
}

-(void)setUpdateCount:(id)value
{
    object.updateCount = [value longValue];
}



- (id)initWithObject:(EDAMNotesMetadataList*)object_
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
