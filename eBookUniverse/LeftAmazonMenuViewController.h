//
//  MenuViewController.h
//  SlideMenu
//
//  Created by Kyle Begeman on 1/13/13.
//  Copyright (c) 2013 Indee Box LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuViewControllerDelegate<NSObject>
@required
-(void) didSelectedMenuItemWithTitle:(NSString*) title andCategoryId:(NSNumber*) index andUrl: (NSString*) url;

@end




@interface LeftAmazonMenuViewController : UITableViewController

@property (strong) id <MenuViewControllerDelegate> delegate;
@property (nonatomic,strong) NSMutableDictionary * catagoryDict;

@property (strong, nonatomic) NSMutableArray *menu;

@property (strong, nonatomic) NSString *url;
@property (strong, nonatomic) NSString *countryNames;



@end
