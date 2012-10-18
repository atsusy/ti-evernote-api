#import "TiProxy.h"
#import "EDAMNoteStore.h"

@interface JpMasuidriveTiEvernoteapiClientUsageMetricsProxy : TiProxy {
@private
    EDAMClientUsageMetrics* object;
}
@property (nonatomic, retain) EDAMClientUsageMetrics* object;

- (id)initWithObject:(EDAMClientUsageMetrics*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)sessions;
- (void)setSessions:(id)value;

@end
