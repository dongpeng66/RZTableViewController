//
//  RZViewController.h
//  RZJR
//
//  Created by 人众 on 2017/7/26.
//
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, RZViewControllerStyle) {
    
    RZMainViewController = 0,
    RZChildViewController
};
@interface RZViewController : UIViewController

- (instancetype)initCLViewControllerWith:(RZViewControllerStyle)style;
@end
NS_ASSUME_NONNULL_END
