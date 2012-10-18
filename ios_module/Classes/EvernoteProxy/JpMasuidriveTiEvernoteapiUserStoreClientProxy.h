#import "TiProxy.h"
#import "EDAMUserStore.h"
#import "JpMasuidriveTiEvernoteapiClientProxy.h"

@interface JpMasuidriveTiEvernoteapiUserStoreClientProxy : JpMasuidriveTiEvernoteapiClientProxy {
@private
    EDAMUserStoreClient* client;
}
@property (nonatomic, retain) EDAMUserStoreClient* client;

- (id)initWithUri: (NSString*)uri;

@end
