//
//  MasterViewController.m
//  JumboModClient-Ios
//
//  Created by Aaron Evans on 11/15/14.
//  Copyright (c) 2014 Jumbo Mobile. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

//#import "User.h"
#import "SplicerClient-Swift-Bridging-Header.h"
//#import "JsonFetcher.h"

//static NSString * const SERVER_BASE_URL = @"http://splicer.io";
//static NSString * const SERVER_BASE_URL = @"http://localhost:9400";

@implementation JsonFetcher

//@synthesize detailViewController;
//@synthesize usersFetcher;
//@synthesize users;
NSArray *users;
NSString * const SERVER_BASE_URL = @"http://localhost:9400";

//from orig jsonfetcher
@synthesize objectManager;
@synthesize mapping;
//@synthesize users;
//@synthesize tableView;


//below from orig jsonfetcher
-(void)setup:(NSString *)baseUrl rootClass:(Class)clazz path:(NSString *)path;
{
    //users = usrs;
    // initialize AFNetworking HTTPClient
    NSURL *baseURL = [NSURL URLWithString:baseUrl];//[NSURL URLWithString:@"https://api.foursquare.com"];
    AFRKHTTPClient *client = [[AFRKHTTPClient alloc] initWithBaseURL:baseURL];
    
    // initialize RestKit
    objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    
    //from sample: https://www.raywenderlich.com/2476-introduction-to-restkit-tutorial
    // from sample: setup object mappings
    /*
     RKObjectMapping *venueMapping = [RKObjectMapping mappingForClass:[ModelsSplicerUser class]];
     
     [venueMapping addAttributeMappingsFromArray:@[@"name"]];
     */
    
    //map's aaron's original way
    RKObjectMapping* venueMapping = [self mapComplexTypes];
    
    // register mappings with the provider using a response descriptor
    RKResponseDescriptor *responseDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                            method:RKRequestMethodGET
                                            pathPattern:path //@"/api/splicer/User/list"]
                                            //from sample: keyPath:@"response.venues"
                                            keyPath:@""
                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
    
    [objectManager addResponseDescriptor:responseDescriptor];
}

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
                                                  //[self.tableView reloadData];
                                              }
                                              failure:^(RKObjectRequestOperation *operation, NSError *error) {
                                                  NSLog(@"Failure of GET:/user with error %@.", error);
                                              }];
    
}


@end
