#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
#import <RestKit/RKURL.h>

#import "JsonFetcher.h"
#import "ModelRootControllerService.h"

@implementation JsonFetcher

@synthesize objectManager;
@synthesize mapping;

-(void)setup:(NSString *)baseUrl rootClass:(Class)rootClass
{
    RKLogInitialize();
    
    //[[RKClient sharedClient] setBaseURL:@"http://127.0.0.1:9000"];
    
    RKLogConfigureByName("RestKit/Network", RKLogLevelTrace);
    
    objectManager = [RKObjectManager new];
    
    RKURL* url = [RKURL URLWithString:baseUrl];
    
    [objectManager initWithBaseURL:url];
    
    
    RKObjectMapping* rootMapping = [self mapComplexTypes];
    
    //User object array is the root:
    [objectManager.mappingProvider addObjectMapping:rootMapping]; // note this just stores our 

    mapping = [objectManager.mappingProvider objectMappingForClass:rootClass];
}

- (void)execute:(id<RKObjectLoaderDelegate>)delegate path:(NSString *)path 
{
    RKObjectLoader* loader = [objectManager objectLoaderWithResourcePath:path delegate:delegate];
    loader.objectMapping = mapping; // Here's the key. We're telling RestKit to use the MyItem mapping for the objects in the root.
    [loader send];
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