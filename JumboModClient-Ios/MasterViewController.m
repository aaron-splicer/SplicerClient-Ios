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

#import "ModelRootControllerService.h"
#import "JsonFetcher.h"

static NSString * const SERVER_BASE_URL = @"http://splicer.io";
//static NSString * const SERVER_BASE_URL = @"http://localhost";

@implementation MasterViewController

@synthesize detailViewController;
//@synthesize usersFetcher;
@synthesize users;

static JsonFetcher *_usersFetcher;

+ (void)initialize
{
    //[self initJsonFetcher];
    _usersFetcher = [[JsonFetcher alloc] init];
    [_usersFetcher setup:SERVER_BASE_URL rootClass:[ModelRootControllerService_User class]];
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
    [_usersFetcher execute:self path:@"/api/splicer/User/list"];
 
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
    
    ModelRootControllerService_User *user = [self.users 
                                         objectAtIndex: [indexPath row]];
    
     NSLog(@"Displaying User w/ pk: %@", user.Id_);
    //cell.textLabel.text = venue.surName;
    cell.textLabel.text = [NSString stringWithFormat:@"%@%@%@%@%@", [user.Id_ stringValue], @": ", user.lastName, @"@", user.address.zip];//.surName;

    return cell;    
} 


//if you disable the above methods, you can then click the top master record to view the detail screen.  We did not have time to make this work with our dynamic data, but found the following code though we did not have time to try it (from: http://stackoverflow.com/questions/12464164/pushing-to-a-detail-view-from-a-table-view-cell-using-xcode-storyboard):
/*
 - (void)tableView:(UITableView *)tableView 
 didSelectRowAtIndexPath:(NSIndexPath*)indexPath {
 
 //Build a segue string based on the selected cell
 NSString *segueString = [NSString stringWithFormat:@"%@Segue",
 [users objectAtIndex:indexPath.row]];
 //Since contentArray is an array of strings, we can use it to build a unique 
 //identifier for each segue.
 
 //Perform a segue.
 [self performSegueWithIdentifier:segueString
 sender:[users objectAtIndex:indexPath.row]];
 }
*/


//** RKObjectLoaderDelegate (network) callbacks
//*** THIS IS THE KEY METHOD: this gets called-back with our array of objects retieved from the server.  Now that we have the updated model, simply invalidate the view and then let the view components display the model (via reloadData method below).
- (void)objectLoader:(RKObjectLoader*)objectLoader didLoadObjects:
(NSArray*)objects {
    NSLog(@"Objects delivered from network. Invalidating the view.");
    users = objects;
    [self.tableView reloadData];
    /*
    for (NSObject* ob in objects) {
        if ([ob isKindOfClass:[UserControllerService_User class]]) {
            UserControllerService_User* device = (UserControllerService_User*)ob;
            NSLog(@"Found User w/ pk: %@", device.Id_);
        } else {
            NSLog(@"hmm.. got a %@", ob);
        }
    }
     */
}

- (void)objectLoader:(RKObjectLoader *)objectLoader didFailWithError:(NSError *)error{
    
    NSLog(@"Inside didFailWithError error: %@.", error);

}

@end
