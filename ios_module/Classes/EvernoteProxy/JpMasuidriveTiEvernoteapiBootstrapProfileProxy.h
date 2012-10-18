#import "TiProxy.h"
#import "EDAMUserStore.h"

@interface JpMasuidriveTiEvernoteapiBootstrapProfileProxy : TiProxy {
@private
    EDAMBootstrapProfile* object;
}
@property (nonatomic, retain) EDAMBootstrapProfile* object;

- (id)initWithObject:(EDAMBootstrapProfile*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)name;
- (void)setName:(id)value;

- (id)settings;
- (void)setSettings:(id)value;

@end
