#import "JpMasuidriveTiEvernoteapiUserAttributesProxy.h"
#import "TiUtils.h"
#import "TiThriftUtils.h"



#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (EDAMUserAttributes)
-(id)createUserAttributes:(id)args
{
    return [[[JpMasuidriveTiEvernoteapiUserAttributesProxy alloc] initWithObject: [[[EDAMUserAttributes alloc] init] autorelease]] autorelease];
}
@end


@implementation JpMasuidriveTiEvernoteapiUserAttributesProxy
@synthesize object;


-(id)defaultLocationName
{
    return object.defaultLocationName;
}

-(void)setDefaultLocationName:(id)value
{
    object.defaultLocationName = [TiUtils stringValue:value];
}


-(id)defaultLatitude
{
    return NUMDOUBLE(object.defaultLatitude);
}

-(void)setDefaultLatitude:(id)value
{
    object.defaultLatitude = [value doubleValue];
}


-(id)defaultLongitude
{
    return NUMDOUBLE(object.defaultLongitude);
}

-(void)setDefaultLongitude:(id)value
{
    object.defaultLongitude = [value doubleValue];
}


-(id)preactivation
{
    return NUMBOOL(object.preactivation);
}

-(void)setPreactivation:(id)value
{
    object.preactivation = [value boolValue];
}


-(id)viewedPromotions
{
    return arrayMap(object.viewedPromotions, ^(id item) { return item; });
}

-(void)setViewedPromotions:(id)value
{
    object.viewedPromotions = arrayMap(value, ^(id item) { return item; });
}


-(id)incomingEmailAddress
{
    return object.incomingEmailAddress;
}

-(void)setIncomingEmailAddress:(id)value
{
    object.incomingEmailAddress = [TiUtils stringValue:value];
}


-(id)recentMailedAddresses
{
    return arrayMap(object.recentMailedAddresses, ^(id item) { return item; });
}

-(void)setRecentMailedAddresses:(id)value
{
    object.recentMailedAddresses = arrayMap(value, ^(id item) { return item; });
}


-(id)comments
{
    return object.comments;
}

-(void)setComments:(id)value
{
    object.comments = [TiUtils stringValue:value];
}


-(id)dateAgreedToTermsOfService
{
    return NUMLONGLONG(object.dateAgreedToTermsOfService);
}

-(void)setDateAgreedToTermsOfService:(id)value
{
    object.dateAgreedToTermsOfService = [value longLongValue];
}


-(id)maxReferrals
{
    return NUMLONG(object.maxReferrals);
}

-(void)setMaxReferrals:(id)value
{
    object.maxReferrals = [value longValue];
}


-(id)referralCount
{
    return NUMLONG(object.referralCount);
}

-(void)setReferralCount:(id)value
{
    object.referralCount = [value longValue];
}


-(id)refererCode
{
    return object.refererCode;
}

-(void)setRefererCode:(id)value
{
    object.refererCode = [TiUtils stringValue:value];
}


-(id)sentEmailDate
{
    return NUMLONGLONG(object.sentEmailDate);
}

-(void)setSentEmailDate:(id)value
{
    object.sentEmailDate = [value longLongValue];
}


-(id)sentEmailCount
{
    return NUMLONG(object.sentEmailCount);
}

-(void)setSentEmailCount:(id)value
{
    object.sentEmailCount = [value longValue];
}


-(id)dailyEmailLimit
{
    return NUMLONG(object.dailyEmailLimit);
}

-(void)setDailyEmailLimit:(id)value
{
    object.dailyEmailLimit = [value longValue];
}


-(id)emailOptOutDate
{
    return NUMLONGLONG(object.emailOptOutDate);
}

-(void)setEmailOptOutDate:(id)value
{
    object.emailOptOutDate = [value longLongValue];
}


-(id)partnerEmailOptInDate
{
    return NUMLONGLONG(object.partnerEmailOptInDate);
}

-(void)setPartnerEmailOptInDate:(id)value
{
    object.partnerEmailOptInDate = [value longLongValue];
}


-(id)preferredLanguage
{
    return object.preferredLanguage;
}

-(void)setPreferredLanguage:(id)value
{
    object.preferredLanguage = [TiUtils stringValue:value];
}


-(id)preferredCountry
{
    return object.preferredCountry;
}

-(void)setPreferredCountry:(id)value
{
    object.preferredCountry = [TiUtils stringValue:value];
}


-(id)clipFullPage
{
    return NUMBOOL(object.clipFullPage);
}

-(void)setClipFullPage:(id)value
{
    object.clipFullPage = [value boolValue];
}


-(id)twitterUserName
{
    return object.twitterUserName;
}

-(void)setTwitterUserName:(id)value
{
    object.twitterUserName = [TiUtils stringValue:value];
}


-(id)twitterId
{
    return object.twitterId;
}

-(void)setTwitterId:(id)value
{
    object.twitterId = [TiUtils stringValue:value];
}


-(id)groupName
{
    return object.groupName;
}

-(void)setGroupName:(id)value
{
    object.groupName = [TiUtils stringValue:value];
}


-(id)recognitionLanguage
{
    return object.recognitionLanguage;
}

-(void)setRecognitionLanguage:(id)value
{
    object.recognitionLanguage = [TiUtils stringValue:value];
}


-(id)customerProfileId
{
    return NUMLONGLONG(object.customerProfileId);
}

-(void)setCustomerProfileId:(id)value
{
    object.customerProfileId = [value longLongValue];
}


-(id)referralProof
{
    return object.referralProof;
}

-(void)setReferralProof:(id)value
{
    object.referralProof = [TiUtils stringValue:value];
}


-(id)educationalDiscount
{
    return NUMBOOL(object.educationalDiscount);
}

-(void)setEducationalDiscount:(id)value
{
    object.educationalDiscount = [value boolValue];
}


-(id)businessAddress
{
    return object.businessAddress;
}

-(void)setBusinessAddress:(id)value
{
    object.businessAddress = [TiUtils stringValue:value];
}


-(id)hideSponsorBilling
{
    return NUMBOOL(object.hideSponsorBilling);
}

-(void)setHideSponsorBilling:(id)value
{
    object.hideSponsorBilling = [value boolValue];
}



- (id)initWithObject:(EDAMUserAttributes*)object_
{
    if(self = [super init]){
        self.object = object_;
    }
    return self;
}

- (void)dealloc
{
    self.object = nil;
    [super release];
}
@end
