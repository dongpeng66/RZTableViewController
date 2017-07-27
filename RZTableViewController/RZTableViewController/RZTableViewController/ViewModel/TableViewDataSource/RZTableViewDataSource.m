//
//  RZTableViewDataSource.m
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import "RZTableViewDataSource.h"
@interface RZTableViewDataSource ()

@property (nonatomic, strong, readwrite) RZTableViewBaseModel *rz_viewModel;

@end
@implementation RZTableViewDataSource
- (instancetype)initTableViewDataSourceWithViewModel:(RZTableViewBaseModel *)viewModel {
    
    self = [super init];
    
    if (self) {
        
        self.rz_viewModel = viewModel;
    }
    
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    
    return self.rz_viewModel.rz_dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"UITableViewCell"];
    }
    
    return cell;
}

@end
