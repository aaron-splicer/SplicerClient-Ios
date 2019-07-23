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
static NSString * const SERVER_BASE_URL = @"http://localhost:9400";

@implementation MasterViewController

@synthesize detailViewController;
//@synthesize usersFetcher;
//@synthesize users;
//NSArray *users;

//from orig jsonfetcher
@synthesize objectManager;
@synthesize mapping;
//@synthesize users;
//@synthesize tableView;

//static JsonFetcher *_usersFetcher;

+ (void)initialize
{
    //[self initJsonFetcher];
    //_usersFetcher = [[JsonFetcher alloc] init];
    
    //could not get setup call to work here at least initially
}

- (void)awakeFromNib
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.clearsSelectionOnViewWillAppear = NO;
        self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    }
    [super awakeFromNib];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        [self.tableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] animated:NO scrollPosition:UITableViewScrollPositionMiddle];
    }
    
    //[_usersFetcher execute:self ];
    [self setup:SERVER_BASE_URL rootClass:[ModelsSplicerUser class] path:@"/api/splicer/User/list"];
    [self execute:@"/api/splicer/User/list"];
 
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

//** END OF GENERATED CODE (generated when xcode created the sample master-view project)

//DISABLE THE NEXT 3 METHODS IF YOU WANT TO SEE THE ORIGINAL STATIC STORYBOARD FLOW.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{ 
    return 1; 
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    //*** WARNING: DEMO PURPOSES ONLY/POTENTIAL BUG: In this prototype, we manuually added 9 rows to the storyboard; since we could not figure out how to dynamically build the rows, so we can only display up to 9 items of the array of retrieved data. Please contact us if you have questions about the implications here.
    NSInteger count = users.count;
    
    if(count < 9){
        return count;
    }else{
        return 9;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView 
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
//    NSLog(@"Object count: %@", users.count);
    ModelsSplicerUser *user = [users objectAtIndex: [indexPath row]];
    
     NSLog(@"Displaying User w/ pk: %lld", [user getId]);
    //cell.textLabel.text = venue.surName;
  
    cell.textLabel.text = [NSString stringWithFormat:@"%lld%@%@%@%@", [user getId], @": ", [user getLastname], @"@", [[user getAddress] getZip]];
    
    return cell;    
} 


@end
