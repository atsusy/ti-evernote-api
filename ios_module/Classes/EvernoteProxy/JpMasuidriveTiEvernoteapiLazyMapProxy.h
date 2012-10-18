#import "TiProxy.h"
#import "EDAMTypes.h"

@interface JpMasuidriveTiEvernoteapiLazyMapProxy : TiProxy {
@private
    EDAMLazyMap* object;
}
@property (nonatomic, retain) EDAMLazyMap* object;

- (id)initWithObject:(EDAMLazyMap*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)keysOnly;
- (void)setKeysOnly:(id)value;

- (id)fullMap;
- (void)setFullMap:(id)value;

@end
