#import "TiProxy.h"
#import "EDAMNoteStore.h"

@interface JpMasuidriveTiEvernoteapiRelatedResultSpecProxy : TiProxy {
@private
    EDAMRelatedResultSpec* object;
}
@property (nonatomic, retain) EDAMRelatedResultSpec* object;

- (id)initWithObject:(EDAMRelatedResultSpec*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)maxNotes;
- (void)setMaxNotes:(id)value;

- (id)maxNotebooks;
- (void)setMaxNotebooks:(id)value;

- (id)maxTags;
- (void)setMaxTags:(id)value;

@end
