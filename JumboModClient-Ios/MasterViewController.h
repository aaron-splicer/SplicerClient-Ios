//
//  MasterViewController.h
//  JumboModClient-Ios
//
//  Created by Aaron Evans on 11/15/14.
//  Copyright (c) 2014 Jumbo Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import <Foundation/Foundation.h>
#import "JsonMapper.h"
#import "JsonFetcher.h"
//#import "ModelRootControllerService.h"

@interface MasterViewController : UITableViewController

+ (void)initialize;
//- (void)initJsonFetcher;

//- (id)initWithStyle:(UITableViewStyle)style;
@property (strong, nonatomic) DetailViewController *detailViewController;
//@property (strong, nonatomic) JsonFetcher * usersFetcher;
//@property (nonatomic, strong) NSArray *users;

//from orig jsonfetcher

//@property (nonatomic, strong) NSArray *users;
//extern NSArray *users;

//@property (nonatomic, strong) UITableView *tableView;

//@property (strong, nonatomic) RKObjectManager *objectManager;// = [RKObjectManager new];
//@property (strong, nonatomic) RKObjectMapping* mapping;
-(void)setup:(NSString *)baseUrl rootClass:(Class)clazz path:(NSString *)path;
//-(void)setup:(NSString *)baseUrl;
//would be nice to switch the first 2 params around to be similar to droid structure
//- (void)execute:(id<RKObjectLoaderDelegate>)delegate path:(NSString *)path;
- (void)execute:(NSString *)path;
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
