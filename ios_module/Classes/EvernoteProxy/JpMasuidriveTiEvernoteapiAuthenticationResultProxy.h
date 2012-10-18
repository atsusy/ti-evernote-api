#import "TiProxy.h"
#import "EDAMUserStore.h"

@interface JpMasuidriveTiEvernoteapiAuthenticationResultProxy : TiProxy {
@private
    EDAMAuthenticationResult* object;
}
@property (nonatomic, retain) EDAMAuthenticationResult* object;

- (id)initWithObject:(EDAMAuthenticationResult*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)currentTime;
- (void)setCurrentTime:(id)value;

- (id)authenticationToken;
- (void)setAuthenticationToken:(id)value;

- (id)expiration;
- (void)setExpiration:(id)value;

- (id)user;
- (void)setUser:(id)value;

- (id)publicUserInfo;
- (void)setPublicUserInfo:(id)value;

- (id)noteStoreUrl;
- (void)setNoteStoreUrl:(id)value;

- (id)webApiUrlPrefix;
- (void)setWebApiUrlPrefix:(id)value;

@end
