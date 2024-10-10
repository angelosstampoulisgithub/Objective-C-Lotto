//
//  ViewController.h
//  ObjectiveCLotto
//
//  Created by Angelos Staboulis on 30/9/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)btnLotto:(id)sender;
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *numbers;
@property NSMutableArray<NSNumber*> *randomNumbers;

@end

