//
//  MasterViewController.m
//  JumboModClient-Ios
//
//  Created by Aaron Evans on 11/15/14.
//  Copyright (c) 2014 Jumbo Mobile. All rights reserved.
//

//#import "MasterViewController.h"
#import "DetailViewController.h"

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

//#import "User.h"
#import "SplicerClient-Swift-Bridging-Header.h"
#import "JsonFetcher.h"

//static NSString * const SERVER_BASE_URL = @"http://splicer.io";
//static NSString * const SERVER_BASE_URL = @"http://localhost:9400";

@implementation JsonFetcher

//@synthesize detailViewController;
//@synthesize usersFetcher;
//@synthesize users;
NSArray *testUsers;
NSString * const SERVER_BASE_URL = @"http://localhost:9000";//http://localhost:9000/api/sports-roots
NSString * const AUTH_HEADER = @"Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImF1dGgiOiJST0xFX0FETUlOLFJPTEVfVVNFUiIsImV4cCI6MTU4ODYxNjY4NH0.Ln1M_VzMd_HXfR6J3EFDQfJudOBwqMf1JK32R3WlHZLvlf6wfgT9Cc7_I04Dotbi4Vp_EpHe0y4ZE9HVWQme0w";

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
//    [client setDefaultHeader:@"Accept" value:RKMIMETypeJSON];
    [client setDefaultHeader:@"Authorization" value:AUTH_HEADER];
    
    // initialize RestKit
    objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    
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
                                                  //FIXME also need a callback where this type gets created.  Or perhaps you can just typecast it
                                                  testUsers = mappingResult.array;
                                                  //FIXME: Need a way to invalidate the caller from this thread.
                                                  //[self.tableView reloadData];
                                                  
                                              }
                                              failure:^(RKObjectRequestOperation *operation, NSError *error) {
                                                  NSLog(@"Failure of GET:/user with error %@.", error);
                                              }];
    
}


@end
