#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
//#import <RestKit/RKURL.h>

#import "JsonFetcher.h"
#import "ModelRootControllerService.h"

@implementation JsonFetcher

@synthesize objectManager;
@synthesize mapping;
@synthesize users;
@synthesize tableView;

-(void)setup:(NSString *)baseUrl rootClass:(Class)rootClass path:(NSString *)path usrs:(NSArray *)usrs
{
    users = usrs;
    // initialize AFNetworking HTTPClient
    NSURL *baseURL = baseUrl;//[NSURL URLWithString:@"https://api.foursquare.com"];
    AFRKHTTPClient *client = [[AFRKHTTPClient alloc] initWithBaseURL:baseURL];
    
    // initialize RestKit
    objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    
    //from sample: https://www.raywenderlich.com/2476-introduction-to-restkit-tutorial
    // setup object mappings
    /*
    RKObjectMapping *venueMapping = [RKObjectMapping mappingForClass:[ModelRootControllerService_User class]];
    
    [venueMapping addAttributeMappingsFromArray:@[@"name"]];
     */
    
    //map's aaron's original way
    RKObjectMapping* venueMapping = [self mapComplexTypes];
    //mapping = [objectManager.mappingProvider objectMappingForClass:rootClass];
    
    // register mappings with the provider using a response descriptor
    RKResponseDescriptor *responseDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                                 method:RKRequestMethodGET
                                            //pathPattern:@"/v2/venues/search"
                                            pathPattern:path //@"/api/splicer/User/list"]
                                            //keyPath:@"response.venues"
                                            keyPath:@""
                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
    
    [objectManager addResponseDescriptor:responseDescriptor];
}
/*
- (void)loadVenues
{
    NSString *latLon = @"37.33,-122.03"; // approximate latLon of The Mothership (a.k.a Apple headquarters)
    NSString *clientID = kCLIENTID;
    NSString *clientSecret = kCLIENTSECRET;
    
    NSDictionary *queryParams = @{@"ll" : latLon,
                                  @"client_id" : clientID,
                                  @"client_secret" : clientSecret,
                                  @"categoryId" : @"4bf58dd8d48988d1e0931735",
                                  @"v" : @"20140118"};
    
    [[RKObjectManager sharedManager] getObjectsAtPath:@"/v2/venues/search"
                                           parameters:queryParams
                                              success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
                                                  users = mappingResult.array;
                                                  //[self.tableView.reloadData];
                                                  [self.tableView reloadData];
                                              }
                                              failure:^(RKObjectRequestOperation *operation, NSError *error) {
                                                  NSLog(@"What do you mean by 'there is no coffee?': %@", error);
                                              }];
}*/

- (void)execute:(NSString *)path;
{
    //aaron's orig (0.1.0 or earlier)
    /*
    RKObjectLoader* loader = [objectManager objectLoaderWithResourcePath:path delegate:delegate];
    loader.objectMapping = mapping; // Here's the key. We're telling RestKit to use the MyItem mapping for the objects in the root.
    [loader send];
     */
    
    NSDictionary *queryParams = @{@"dummy":@"dummyParam"};
    
    [[RKObjectManager sharedManager] getObjectsAtPath:path//@"/v2/venues/search"
                                           parameters:queryParams
                                              success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
                                                  users = mappingResult.array;
                                                  [self.tableView reloadData];
                                              }
                                              failure:^(RKObjectRequestOperation *operation, NSError *error) {
                                                  NSLog(@"What do you mean by 'there is no coffee?': %@", error);
                                              }];

}

//this actually gets called even though the real callback we want is didLoadObjects. Disabling for now.
/*
- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response
{
     NSLog(@"Inside didLoadResponse");
    if (request.method == RKRequestMethodGET) {
        id xmlParser = [[RKParserRegistry sharedRegistry] parserForMIMEType:RKMIMETypeXML];
        NSError *error = nil;
        id parsedResponse = [xmlParser objectFromString:[response bodyAsString] error:&error];
        if (error == nil)
            NSLog(@"GET:/user returned with HTTP Code %d and parsedContent: %@", [response statusCode], parsedResponse);
    }
}
*/

/*
- (void)objectLoader:(RKObjectLoader*)objectLoader didLoadObjects:
(NSArray*)objects {
    NSLog(@"Loaded objects");
    for (NSObject* ob in objects) {
        if ([ob isKindOfClass:[UserControllerService_User class]]) {
            UserControllerService_User* device = (UserControllerService_User*)ob;
            NSLog(@"Found User: %@", device.surName);
        } else {
            NSLog(@"hmm.. got a %@", ob);
        }
    }
    //NSLog(@"Loaded objects: %@", objects.count);
}
*/

/*
- (void)request:(RKRequest *)request didFailLoadWithError:(NSError *)error
{
    if (request.method == RKRequestMethodGET) {
        NSLog(@"Failure of GET:/user with error %@.", error);
    }
}
*/
@end
