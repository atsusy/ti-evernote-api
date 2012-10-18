#import "TiProxy.h"
#import "EDAMUserStore.h"

@interface JpMasuidriveTiEvernoteapiPremiumInfoProxy : TiProxy {
@private
    EDAMPremiumInfo* object;
}
@property (nonatomic, retain) EDAMPremiumInfo* object;

- (id)initWithObject:(EDAMPremiumInfo*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)currentTime;
- (void)setCurrentTime:(id)value;

- (id)premium;
- (void)setPremium:(id)value;

- (id)premiumRecurring;
- (void)setPremiumRecurring:(id)value;

- (id)premiumExpirationDate;
- (void)setPremiumExpirationDate:(id)value;

- (id)premiumExtendable;
- (void)setPremiumExtendable:(id)value;

- (id)premiumPending;
- (void)setPremiumPending:(id)value;

- (id)premiumCancellationPending;
- (void)setPremiumCancellationPending:(id)value;

- (id)canPurchaseUploadAllowance;
- (void)setCanPurchaseUploadAllowance:(id)value;

- (id)sponsoredGroupName;
- (void)setSponsoredGroupName:(id)value;

- (id)sponsoredGroupRole;
- (void)setSponsoredGroupRole:(id)value;

- (id)businessName;
- (void)setBusinessName:(id)value;

- (id)businessAdmin;
- (void)setBusinessAdmin:(id)value;

@end
