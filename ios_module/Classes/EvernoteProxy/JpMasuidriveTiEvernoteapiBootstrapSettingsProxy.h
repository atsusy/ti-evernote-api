#import "TiProxy.h"
#import "EDAMUserStore.h"

@interface JpMasuidriveTiEvernoteapiBootstrapSettingsProxy : TiProxy {
@private
    EDAMBootstrapSettings* object;
}
@property (nonatomic, retain) EDAMBootstrapSettings* object;

- (id)initWithObject:(EDAMBootstrapSettings*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)serviceHost;
- (void)setServiceHost:(id)value;

- (id)marketingUrl;
- (void)setMarketingUrl:(id)value;

- (id)supportUrl;
- (void)setSupportUrl:(id)value;

- (id)accountEmailDomain;
- (void)setAccountEmailDomain:(id)value;

- (id)enableFacebookSharing;
- (void)setEnableFacebookSharing:(id)value;

- (id)enableGiftSubscriptions;
- (void)setEnableGiftSubscriptions:(id)value;

- (id)enableSupportTickets;
- (void)setEnableSupportTickets:(id)value;

- (id)enableSharedNotebooks;
- (void)setEnableSharedNotebooks:(id)value;

- (id)enableSingleNoteSharing;
- (void)setEnableSingleNoteSharing:(id)value;

- (id)enableSponsoredAccounts;
- (void)setEnableSponsoredAccounts:(id)value;

- (id)enableTwitterSharing;
- (void)setEnableTwitterSharing:(id)value;

- (id)enableLinkedInSharing;
- (void)setEnableLinkedInSharing:(id)value;

@end
