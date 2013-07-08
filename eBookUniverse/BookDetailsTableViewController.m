//
//  BookDetailsTableViewController.m
//  RainFall
//
//  Created by Babul Mirdha on 6/13/13.
//  Copyright (c) 2013 Leads Corporation Limited. All rights reserved.
//

#import "BookDetailsTableViewController.h"
#import "AFJSONRequestOperation.h"
#import "NSString+stripHtml.h"
#import "UIImageView+AFNetworking.h"



@interface BookDetailsTableViewController ()


@end

@implementation BookDetailsTableViewController
@synthesize coverImageView;
@synthesize eBookDescriptionTextView;
@synthesize price;
@synthesize CVImage;
@synthesize buyButton;
@synthesize titleLable;




#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem// withImage: (UIImage*) image
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        //self.coverImageView.image=image;
        
        // Update the view.
       [self configureView];
        
        
        NSLog(@"%@",_detailItem);
        
       
        
    }
}

-(void)viewDidAppear:(BOOL)animated{


}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        self.titleLable.text  = [self.detailItem objectForKey:@"trackName"];
        
        NSLog(@" [self.detailItem objectForKey: %@", [self.detailItem objectForKey:@"trackName"]);

        
        NSString *atrStr=[self.detailItem objectForKey:@"description"];
        NSString* stripped = [atrStr stripHtml];
        
        self.eBookDescriptionTextView.text=stripped;
    
        
        self.price.text=[self.detailItem objectForKey:@"formattedPrice"];
       
     NSString *artworkUrl60=[self.detailItem objectForKey:@"artworkUrl60"];
        
        //__weak typeof(self) weakSelf = self;

      [ self.coverImageView setImageWithURLRequest:[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:artworkUrl60]] placeholderImage:[UIImage new] success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image)
       
           
        {
           if(image)
                           {
               
               self.coverImageView.image=image;
               [self.coverImageView setNeedsLayout];
            }
        
       }
    failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error) {
       NSLog(@"Fail");
    }];
        
        
    
}

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    


    
    self.tableView.separatorStyle=UITableViewCellEditingStyleNone;
    
    if ([[self.detailItem objectForKey:@"formattedPrice"] isEqualToString:@"Free"]) {
        [buyButton setTitle:@"Download" forState:UIControlStateNormal];

    }
   
       [self configureView];

}

-(void)viewDidLayoutSubviews{

titleLable.numberOfLines = 6;
    [titleLable sizeToFit];
 [self.view addSubview:titleLable];

}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
//    NSArray * visibleIndexes = [tableView indexPathsForVisibleRows];
//    NSIndexPath * firstVisibleIndex = [visibleIndexes objectAtIndex:0];
// 
//    
//    
//     //UILabel *customLabel = [[UILabel alloc] init];
//    if (section == firstVisibleIndex.section) {
//   
//       // customLabel.text = [self tableView:tableView titleForHeaderInSection:section];}
//    return nil;
    
//    UIView *myView=[[UIView alloc] init] ;//]WithFrame:CGRectMake(0, 50, 20, 30)];
//    //[myView setBackgroundColor:[UIColor redColor]];
//    if (section == firstVisibleIndex.section) {
//        // configure the header at the top
//        
//        return myView;
//    }
////    else {
//        // configure other headers
//        
//    else return nil;
//    
////    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 3, tableView.bounds.size.width - 10, 18)] ;
//    label.text = @"Section Header Text Here";
//    label.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.75];
//    label.backgroundColor = [UIColor clearColor];
//    [self.v addSubview:label];

//}
   // return nil;
    
    
    
//    UIView *section2 =[[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 22)] ;
//    [section2 setBackgroundColor:[UIColor blackColor]];
//    return section2;
    
    UILabel *customLabel = [[UILabel alloc] init];
    customLabel.text=@"Description";
    customLabel.textColor=[UIColor colorWithRed:(CGFloat)0.0 green:(CGFloat)0.3 blue:(CGFloat)0.9 alpha:(CGFloat)0.8];
    customLabel.textAlignment=UITextAlignmentLeft;
    return customLabel;
}
- (void)viewDidUnload {
    
    
    [super viewDidUnload];
}
- (IBAction)shareButton:(id)sender {
    
    
    NSString *trackUrl=[self.detailItem objectForKey:@"trackViewUrl"];
    
    NSURL* url = [NSURL URLWithString:trackUrl];
    
    NSString *secondMsg=@"It's just an great App";
    
    NSArray *activityItems = @[url,secondMsg];
    
    
    // Initialize Activity View Controller
    UIActivityViewController *vc = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    
    //    [vc setCompletionHandler:^(NSString *activityType, BOOL completed) {
    //
    //       UIAlertView *alert=[[UIAlertView alloc] initWithTitle:nil message:@"Shared Successfully" delegate:self cancelButtonTitle:@"Done" otherButtonTitles: nil];
    //          [alert show];
    //        NSLog(@"completed dialog - activity: %@ - finished flag: %d", activityType, completed);
    //    }];
    
    // Present Activity View Controller
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)openEBookInSafari:(id)sender {
    
    
    NSString *trackUrl=[self.detailItem objectForKey:@"trackViewUrl"];
    
    NSURL* url = [NSURL URLWithString:trackUrl];
    [[UIApplication sharedApplication] openURL:url];
}
@end
