//
//  MasterViewController.h
//  JumboModClient-Ios
//
//  Created by Aaron Evans on 11/15/14.
//  Copyright (c) 2014 Jumbo Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;
@class JsonFetcher;

@protocol RKObjectLoaderDelegate; 

@interface MasterViewController : UITableViewController<RKObjectLoaderDelegate>

+ (void)initialize;
//- (void)initJsonFetcher;

//- (id)initWithStyle:(UITableViewStyle)style;
@property (strong, nonatomic) DetailViewController *detailViewController;
//@property (strong, nonatomic) JsonFetcher * usersFetcher;
@property (nonatomic, strong) NSArray *users;

@end
