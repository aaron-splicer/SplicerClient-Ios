//
//  MyClass.h
//  JumboModClient-Ios
//
//  Created by Aaron Evans on 11/17/14.
//  Copyright (c) 2014 Jumbo Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "JsonMapper.h"

@interface JsonFetcher : JsonMapper

@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) UITableView *tableView;

@property (strong, nonatomic) RKObjectManager *objectManager;// = [RKObjectManager new];
@property (strong, nonatomic) RKObjectMapping* mapping;
-(void)setup:(NSString *)baseUrl rootClass:(Class)clazz;
//would be nice to switch the first 2 params around to be similar to droid structure
//- (void)execute:(id<RKObjectLoaderDelegate>)delegate path:(NSString *)path;
- (void)execute:(NSString *)path;

@end
