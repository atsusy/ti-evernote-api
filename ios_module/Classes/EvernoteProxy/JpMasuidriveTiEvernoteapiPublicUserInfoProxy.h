#import "TiProxy.h"
#import "EDAMUserStore.h"

@interface JpMasuidriveTiEvernoteapiPublicUserInfoProxy : TiProxy {
@private
    EDAMPublicUserInfo* object;
}
@property (nonatomic, retain) EDAMPublicUserInfo* object;

- (id)initWithObject:(EDAMPublicUserInfo*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)userId;
- (void)setUserId:(id)value;

- (id)shardId;
- (void)setShardId:(id)value;

- (id)privilege;
- (void)setPrivilege:(id)value;

- (id)username;
- (void)setUsername:(id)value;

- (id)noteStoreUrl;
- (void)setNoteStoreUrl:(id)value;

@end
