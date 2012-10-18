#import "TiProxy.h"
#import "EDAMNoteStore.h"

@interface JpMasuidriveTiEvernoteapiRelatedResultProxy : TiProxy {
@private
    EDAMRelatedResult* object;
}
@property (nonatomic, retain) EDAMRelatedResult* object;

- (id)initWithObject:(EDAMRelatedResult*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)notes;
- (void)setNotes:(id)value;

- (id)notebooks;
- (void)setNotebooks:(id)value;

- (id)tags;
- (void)setTags:(id)value;

@end
