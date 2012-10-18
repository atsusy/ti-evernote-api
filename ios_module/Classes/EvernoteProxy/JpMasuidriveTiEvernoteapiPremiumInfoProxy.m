#import "JpMasuidriveTiEvernoteapiPremiumInfoProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"



#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMPremiumInfo)
- (id)createPremiumInfo:(id)args
{
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    EDAMPremiumInfo* thrift_object = [[[EDAMPremiumInfo alloc] init] autorelease];
    JpMasuidriveTiEvernoteapiPremiumInfoProxy* proxy = [[[JpMasuidriveTiEvernoteapiPremiumInfoProxy alloc] initWithObject: thrift_object] autorelease];
    if(args) {
        id val;

        val = [args objectForKey:@"currentTime"];
        if(val) {
            [proxy setCurrentTime:val];
        }

        val = [args objectForKey:@"premium"];
        if(val) {
            [proxy setPremium:val];
        }

        val = [args objectForKey:@"premiumRecurring"];
        if(val) {
            [proxy setPremiumRecurring:val];
        }

        val = [args objectForKey:@"premiumExpirationDate"];
        if(val) {
            [proxy setPremiumExpirationDate:val];
        }

        val = [args objectForKey:@"premiumExtendable"];
        if(val) {
            [proxy setPremiumExtendable:val];
        }

        val = [args objectForKey:@"premiumPending"];
        if(val) {
            [proxy setPremiumPending:val];
        }

        val = [args objectForKey:@"premiumCancellationPending"];
        if(val) {
            [proxy setPremiumCancellationPending:val];
        }

        val = [args objectForKey:@"canPurchaseUploadAllowance"];
        if(val) {
            [proxy setCanPurchaseUploadAllowance:val];
        }

        val = [args objectForKey:@"sponsoredGroupName"];
        if(val) {
            [proxy setSponsoredGroupName:val];
        }

        val = [args objectForKey:@"sponsoredGroupRole"];
        if(val) {
            [proxy setSponsoredGroupRole:val];
        }

        val = [args objectForKey:@"businessName"];
        if(val) {
            [proxy setBusinessName:val];
        }

        val = [args objectForKey:@"businessAdmin"];
        if(val) {
            [proxy setBusinessAdmin:val];
        }

    }
    return proxy;
}
@end


@implementation JpMasuidriveTiEvernoteapiPremiumInfoProxy
@synthesize object;

- (id)initWithObject:(EDAMPremiumInfo*)thrift_object
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
        NUMLONGLONG(object.currentTime), @"currentTime",
        NUMBOOL(object.premium), @"premium",
        NUMBOOL(object.premiumRecurring), @"premiumRecurring",
        NUMLONGLONG(object.premiumExpirationDate), @"premiumExpirationDate",
        NUMBOOL(object.premiumExtendable), @"premiumExtendable",
        NUMBOOL(object.premiumPending), @"premiumPending",
        NUMBOOL(object.premiumCancellationPending), @"premiumCancellationPending",
        NUMBOOL(object.canPurchaseUploadAllowance), @"canPurchaseUploadAllowance",
        object.sponsoredGroupName, @"sponsoredGroupName",
        NUMLONG(object.sponsoredGroupRole), @"sponsoredGroupRole",
        object.businessName, @"businessName",
        NUMBOOL(object.businessAdmin), @"businessAdmin",
    nil];
}


- (id)currentTime
{
    return NUMLONGLONG(object.currentTime);
}

- (void)setCurrentTime:(id)value
{
    object.currentTime = [value longLongValue];
}


- (id)premium
{
    return NUMBOOL(object.premium);
}

- (void)setPremium:(id)value
{
    object.premium = [value boolValue];
}


- (id)premiumRecurring
{
    return NUMBOOL(object.premiumRecurring);
}

- (void)setPremiumRecurring:(id)value
{
    object.premiumRecurring = [value boolValue];
}


- (id)premiumExpirationDate
{
    return NUMLONGLONG(object.premiumExpirationDate);
}

- (void)setPremiumExpirationDate:(id)value
{
    object.premiumExpirationDate = [value longLongValue];
}


- (id)premiumExtendable
{
    return NUMBOOL(object.premiumExtendable);
}

- (void)setPremiumExtendable:(id)value
{
    object.premiumExtendable = [value boolValue];
}


- (id)premiumPending
{
    return NUMBOOL(object.premiumPending);
}

- (void)setPremiumPending:(id)value
{
    object.premiumPending = [value boolValue];
}


- (id)premiumCancellationPending
{
    return NUMBOOL(object.premiumCancellationPending);
}

- (void)setPremiumCancellationPending:(id)value
{
    object.premiumCancellationPending = [value boolValue];
}


- (id)canPurchaseUploadAllowance
{
    return NUMBOOL(object.canPurchaseUploadAllowance);
}

- (void)setCanPurchaseUploadAllowance:(id)value
{
    object.canPurchaseUploadAllowance = [value boolValue];
}


- (id)sponsoredGroupName
{
    return object.sponsoredGroupName;
}

- (void)setSponsoredGroupName:(id)value
{
    object.sponsoredGroupName = [TiUtils stringValue:value];
}


- (id)sponsoredGroupRole
{
    return NUMLONG(object.sponsoredGroupRole);
}

- (void)setSponsoredGroupRole:(id)value
{
    object.sponsoredGroupRole = [value longValue];
}


- (id)businessName
{
    return object.businessName;
}

- (void)setBusinessName:(id)value
{
    object.businessName = [TiUtils stringValue:value];
}


- (id)businessAdmin
{
    return NUMBOOL(object.businessAdmin);
}

- (void)setBusinessAdmin:(id)value
{
    object.businessAdmin = [value boolValue];
}



@end
