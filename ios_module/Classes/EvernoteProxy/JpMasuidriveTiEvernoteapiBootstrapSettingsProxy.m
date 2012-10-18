#import "JpMasuidriveTiEvernoteapiBootstrapSettingsProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"



#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMBootstrapSettings)
- (id)createBootstrapSettings:(id)args
{
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    EDAMBootstrapSettings* thrift_object = [[[EDAMBootstrapSettings alloc] init] autorelease];
    JpMasuidriveTiEvernoteapiBootstrapSettingsProxy* proxy = [[[JpMasuidriveTiEvernoteapiBootstrapSettingsProxy alloc] initWithObject: thrift_object] autorelease];
    if(args) {
        id val;

        val = [args objectForKey:@"serviceHost"];
        if(val) {
            [proxy setServiceHost:val];
        }

        val = [args objectForKey:@"marketingUrl"];
        if(val) {
            [proxy setMarketingUrl:val];
        }

        val = [args objectForKey:@"supportUrl"];
        if(val) {
            [proxy setSupportUrl:val];
        }

        val = [args objectForKey:@"accountEmailDomain"];
        if(val) {
            [proxy setAccountEmailDomain:val];
        }

        val = [args objectForKey:@"enableFacebookSharing"];
        if(val) {
            [proxy setEnableFacebookSharing:val];
        }

        val = [args objectForKey:@"enableGiftSubscriptions"];
        if(val) {
            [proxy setEnableGiftSubscriptions:val];
        }

        val = [args objectForKey:@"enableSupportTickets"];
        if(val) {
            [proxy setEnableSupportTickets:val];
        }

        val = [args objectForKey:@"enableSharedNotebooks"];
        if(val) {
            [proxy setEnableSharedNotebooks:val];
        }

        val = [args objectForKey:@"enableSingleNoteSharing"];
        if(val) {
            [proxy setEnableSingleNoteSharing:val];
        }

        val = [args objectForKey:@"enableSponsoredAccounts"];
        if(val) {
            [proxy setEnableSponsoredAccounts:val];
        }

        val = [args objectForKey:@"enableTwitterSharing"];
        if(val) {
            [proxy setEnableTwitterSharing:val];
        }

        val = [args objectForKey:@"enableLinkedInSharing"];
        if(val) {
            [proxy setEnableLinkedInSharing:val];
        }

    }
    return proxy;
}
@end


@implementation JpMasuidriveTiEvernoteapiBootstrapSettingsProxy
@synthesize object;

- (id)initWithObject:(EDAMBootstrapSettings*)thrift_object
{
    if(self = [super init]){
        self.object = thrift_object;
    }
    return self;
}

- (void)dealloc
{
    self.object = nil;
    [super release];
}

- (NSDictionary*)toHash:(id)args
{
    return [NSDictionary dictionaryWithObjectsAndKeys:
        object.serviceHost, @"serviceHost",
        object.marketingUrl, @"marketingUrl",
        object.supportUrl, @"supportUrl",
        object.accountEmailDomain, @"accountEmailDomain",
        NUMBOOL(object.enableFacebookSharing), @"enableFacebookSharing",
        NUMBOOL(object.enableGiftSubscriptions), @"enableGiftSubscriptions",
        NUMBOOL(object.enableSupportTickets), @"enableSupportTickets",
        NUMBOOL(object.enableSharedNotebooks), @"enableSharedNotebooks",
        NUMBOOL(object.enableSingleNoteSharing), @"enableSingleNoteSharing",
        NUMBOOL(object.enableSponsoredAccounts), @"enableSponsoredAccounts",
        NUMBOOL(object.enableTwitterSharing), @"enableTwitterSharing",
        NUMBOOL(object.enableLinkedInSharing), @"enableLinkedInSharing",
    nil];
}


- (id)serviceHost
{
    return object.serviceHost;
}

- (void)setServiceHost:(id)value
{
    object.serviceHost = [TiUtils stringValue:value];
}


- (id)marketingUrl
{
    return object.marketingUrl;
}

- (void)setMarketingUrl:(id)value
{
    object.marketingUrl = [TiUtils stringValue:value];
}


- (id)supportUrl
{
    return object.supportUrl;
}

- (void)setSupportUrl:(id)value
{
    object.supportUrl = [TiUtils stringValue:value];
}


- (id)accountEmailDomain
{
    return object.accountEmailDomain;
}

- (void)setAccountEmailDomain:(id)value
{
    object.accountEmailDomain = [TiUtils stringValue:value];
}


- (id)enableFacebookSharing
{
    return NUMBOOL(object.enableFacebookSharing);
}

- (void)setEnableFacebookSharing:(id)value
{
    object.enableFacebookSharing = [value boolValue];
}


- (id)enableGiftSubscriptions
{
    return NUMBOOL(object.enableGiftSubscriptions);
}

- (void)setEnableGiftSubscriptions:(id)value
{
    object.enableGiftSubscriptions = [value boolValue];
}


- (id)enableSupportTickets
{
    return NUMBOOL(object.enableSupportTickets);
}

- (void)setEnableSupportTickets:(id)value
{
    object.enableSupportTickets = [value boolValue];
}


- (id)enableSharedNotebooks
{
    return NUMBOOL(object.enableSharedNotebooks);
}

- (void)setEnableSharedNotebooks:(id)value
{
    object.enableSharedNotebooks = [value boolValue];
}


- (id)enableSingleNoteSharing
{
    return NUMBOOL(object.enableSingleNoteSharing);
}

- (void)setEnableSingleNoteSharing:(id)value
{
    object.enableSingleNoteSharing = [value boolValue];
}


- (id)enableSponsoredAccounts
{
    return NUMBOOL(object.enableSponsoredAccounts);
}

- (void)setEnableSponsoredAccounts:(id)value
{
    object.enableSponsoredAccounts = [value boolValue];
}


- (id)enableTwitterSharing
{
    return NUMBOOL(object.enableTwitterSharing);
}

- (void)setEnableTwitterSharing:(id)value
{
    object.enableTwitterSharing = [value boolValue];
}


- (id)enableLinkedInSharing
{
    return NUMBOOL(object.enableLinkedInSharing);
}

- (void)setEnableLinkedInSharing:(id)value
{
    object.enableLinkedInSharing = [value boolValue];
}



@end
