//
//  SimpleTableViewDataSource.m
//  RZTableViewController
//
//  Created by 人众 on 2017/7/26.
//
//

#import "SimpleTableViewDataSource.h"

@implementation SimpleTableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    
    return self.rz_viewModel.rz_dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"UITableViewCell"];
    }
    
    cell.textLabel.text = self.rz_viewModel.rz_dataSource[indexPath.row];
    
    return cell;
}
@end
