#import "EDAMNoteListProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"


#import "EDAMNoteProxy.h"


#import "JpMasuidriveTiEvernoteapiModule.h"
@interface JpMasuidriveTiEvernoteapiModule(EDAMNoteList)
-(id)createNoteList:(id)args;
@end

@implementation JpMasuidriveTiEvernoteapiModule(EDAMNoteList)
-(id)createNoteList:(id)args
{
    return [[[EDAMNoteListProxy alloc] initWithObject: [[[EDAMNoteList alloc] init] autorelease]] autorelease];
}
@end


@implementation EDAMNoteListProxy
@synthesize object;


-(id)startIndex
{
    return NUMINT(object.startIndex);
}

-(void)setStartIndex:(id)value
{
    object.startIndex = [value integerValue];
}

-(id)totalNotes
{
    return NUMINT(object.totalNotes);
}

-(void)setTotalNotes:(id)value
{
    object.totalNotes = [value integerValue];
}

-(id)notes
{
    return arrayMap(object.notes, ^(id item) { return [[[EDAMNoteProxy alloc] initWithObject: item] autorelease]; });
}

-(void)setNotes:(id)value
{
    object.notes = arrayMap(value, ^(id item) { return ((EDAMNoteProxy*)item).object; });
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
    return NUMINT(object.updateCount);
}

-(void)setUpdateCount:(id)value
{
    object.updateCount = [value integerValue];
}


- (id)initWithObject:(EDAMNoteList*)object_
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
