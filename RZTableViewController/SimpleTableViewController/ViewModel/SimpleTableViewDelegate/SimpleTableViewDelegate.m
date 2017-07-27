//
//  SimpleTableViewDelegate.m
//  RZTableViewController
//
//  Created by 人众 on 2017/7/26.
//
//

#import "SimpleTableViewDelegate.h"

@implementation SimpleTableViewDelegate
- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"-----------------%ld",indexPath.row);
    
}

@end
