#import "TiProxy.h"
#import "EDAMTypes.h"

@interface JpMasuidriveTiEvernoteapiNoteAttributesProxy : TiProxy {
@private
    EDAMNoteAttributes* object;
}
@property (nonatomic, retain) EDAMNoteAttributes* object;

- (id)initWithObject:(EDAMNoteAttributes*)thrift_object;
- (NSDictionary*)toHash:(id)args;


- (id)subjectDate;
- (void)setSubjectDate:(id)value;

- (id)latitude;
- (void)setLatitude:(id)value;

- (id)longitude;
- (void)setLongitude:(id)value;

- (id)altitude;
- (void)setAltitude:(id)value;

- (id)author;
- (void)setAuthor:(id)value;

- (id)source;
- (void)setSource:(id)value;

- (id)sourceURL;
- (void)setSourceURL:(id)value;

- (id)sourceApplication;
- (void)setSourceApplication:(id)value;

- (id)shareDate;
- (void)setShareDate:(id)value;

- (id)placeName;
- (void)setPlaceName:(id)value;

- (id)contentClass;
- (void)setContentClass:(id)value;

- (id)applicationData;
- (void)setApplicationData:(id)value;

- (id)lastEditedBy;
- (void)setLastEditedBy:(id)value;

@end
