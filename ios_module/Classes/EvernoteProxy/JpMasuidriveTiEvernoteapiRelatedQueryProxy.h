#import "TiProxy.h"
#import "EDAMNoteStore.h"

@interface JpMasuidriveTiEvernoteapiRelatedQueryProxy : TiProxy {
@private
    EDAMRelatedQuery* object;
}
@property (nonatomic, retain) EDAMRelatedQuery* object;

- (id)initWithObject:(EDAMRelatedQuery*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)noteGuid;
- (void)setNoteGuid:(id)value;

- (id)plainText;
- (void)setPlainText:(id)value;

@end
