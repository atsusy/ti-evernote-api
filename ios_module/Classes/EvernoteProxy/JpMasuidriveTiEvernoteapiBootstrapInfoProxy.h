#import "TiProxy.h"
#import "EDAMUserStore.h"

@interface JpMasuidriveTiEvernoteapiBootstrapInfoProxy : TiProxy {
@private
    EDAMBootstrapInfo* object;
}
@property (nonatomic, retain) EDAMBootstrapInfo* object;

- (id)initWithObject:(EDAMBootstrapInfo*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)profiles;
- (void)setProfiles:(id)value;

@end
