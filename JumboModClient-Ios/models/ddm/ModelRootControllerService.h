#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class ModelRootControllerService_ModelRoot;
@class ModelRootControllerService_User;
@class ModelRootControllerService_findObject;
@class ModelRootControllerService_findObjectResponse;
@class ModelRootControllerService_listObjects;
@class ModelRootControllerService_listObjectsResponse;
@class ModelRootControllerService_user;
@class ModelRootControllerService_Address;
@interface ModelRootControllerService_Address : NSObject {
	
/* elements */
	NSString * street1;
	NSString * street2;
	NSString * city;
	NSString * state;
	NSString * zip;
/* attributes */
	NSNumber * Id_;
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ModelRootControllerService_Address *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * street1;
@property (retain) NSString * street2;
@property (retain) NSString * city;
@property (retain) NSString * state;
@property (retain) NSString * zip;
/* attributes */
- (NSDictionary *)attributes;
@property (retain) NSNumber * Id_;
@end
@interface ModelRootControllerService_User : NSObject {
	
/* elements */
	NSString * firstName;
	NSString * lastName;
	ModelRootControllerService_Address * address;
/* attributes */
	NSNumber * Id_;
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ModelRootControllerService_User *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * firstName;
@property (retain) NSString * lastName;
@property (retain) ModelRootControllerService_Address * address;
/* attributes */
- (NSDictionary *)attributes;
@property (retain) NSNumber * Id_;
@end
@interface ModelRootControllerService_ModelRoot : NSObject {
	
/* elements */
	ModelRootControllerService_User * user;
/* attributes */
	NSNumber * Id_;
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ModelRootControllerService_ModelRoot *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) ModelRootControllerService_User * user;
/* attributes */
- (NSDictionary *)attributes;
@property (retain) NSNumber * Id_;
@end
@interface ModelRootControllerService_findObject : NSObject {
	
/* elements */
	NSNumber * arg0;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ModelRootControllerService_findObject *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * arg0;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ModelRootControllerService_user : NSObject {
	
/* elements */
	ModelRootControllerService_User * user;
/* attributes */
	NSNumber * Id_;
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ModelRootControllerService_user *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) ModelRootControllerService_User * user;
/* attributes */
- (NSDictionary *)attributes;
@property (retain) NSNumber * Id_;
@end
@interface ModelRootControllerService_findObjectResponse : NSObject {
	
/* elements */
	ModelRootControllerService_user * user;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ModelRootControllerService_findObjectResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) ModelRootControllerService_user * user;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ModelRootControllerService_listObjects : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ModelRootControllerService_listObjects *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ModelRootControllerService_listObjectsResponse : NSObject {
	
/* elements */
	NSMutableArray *user;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ModelRootControllerService_listObjectsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addUser:(ModelRootControllerService_user *)toAdd;
@property (readonly) NSMutableArray * user;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xs.h"
#import "ModelRootControllerService.h"
@class ModelRootControllerServiceSoapBinding;
@interface ModelRootControllerService : NSObject {
	
}
+ (ModelRootControllerServiceSoapBinding *)ModelRootControllerServiceSoapBinding;
@end
@class ModelRootControllerServiceSoapBindingResponse;
@class ModelRootControllerServiceSoapBindingOperation;
@protocol ModelRootControllerServiceSoapBindingResponseDelegate <NSObject>
- (void) operation:(ModelRootControllerServiceSoapBindingOperation *)operation completedWithResponse:(ModelRootControllerServiceSoapBindingResponse *)response;
@end
@interface ModelRootControllerServiceSoapBinding : NSObject <ModelRootControllerServiceSoapBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(ModelRootControllerServiceSoapBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (ModelRootControllerServiceSoapBindingResponse *)listObjectsUsingParameters:(ModelRootControllerService_listObjects *)aParameters ;
- (void)listObjectsAsyncUsingParameters:(ModelRootControllerService_listObjects *)aParameters  delegate:(id<ModelRootControllerServiceSoapBindingResponseDelegate>)responseDelegate;
- (ModelRootControllerServiceSoapBindingResponse *)findObjectUsingParameters:(ModelRootControllerService_findObject *)aParameters ;
- (void)findObjectAsyncUsingParameters:(ModelRootControllerService_findObject *)aParameters  delegate:(id<ModelRootControllerServiceSoapBindingResponseDelegate>)responseDelegate;
@end
@interface ModelRootControllerServiceSoapBindingOperation : NSOperation {
	ModelRootControllerServiceSoapBinding *binding;
	ModelRootControllerServiceSoapBindingResponse *response;
	id<ModelRootControllerServiceSoapBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) ModelRootControllerServiceSoapBinding *binding;
@property (readonly) ModelRootControllerServiceSoapBindingResponse *response;
@property (nonatomic, assign) id<ModelRootControllerServiceSoapBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(ModelRootControllerServiceSoapBinding *)aBinding delegate:(id<ModelRootControllerServiceSoapBindingResponseDelegate>)aDelegate;
@end
@interface ModelRootControllerServiceSoapBinding_listObjects : ModelRootControllerServiceSoapBindingOperation {
	ModelRootControllerService_listObjects * parameters;
}
@property (retain) ModelRootControllerService_listObjects * parameters;
- (id)initWithBinding:(ModelRootControllerServiceSoapBinding *)aBinding delegate:(id<ModelRootControllerServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(ModelRootControllerService_listObjects *)aParameters
;
@end
@interface ModelRootControllerServiceSoapBinding_findObject : ModelRootControllerServiceSoapBindingOperation {
	ModelRootControllerService_findObject * parameters;
}
@property (retain) ModelRootControllerService_findObject * parameters;
- (id)initWithBinding:(ModelRootControllerServiceSoapBinding *)aBinding delegate:(id<ModelRootControllerServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(ModelRootControllerService_findObject *)aParameters
;
@end
@interface ModelRootControllerServiceSoapBinding_envelope : NSObject {
}
+ (ModelRootControllerServiceSoapBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface ModelRootControllerServiceSoapBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
