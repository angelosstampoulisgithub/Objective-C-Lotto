//
//  ViewController.m
//  ObjectiveCLotto
//
//  Created by Angelos Staboulis on 30/9/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)generateRandomUniqueNumberInRange :(int)rangeLow :(int)rangeHigh{
    NSMutableArray *unqArray=[[NSMutableArray alloc] init];
    _randomNumbers = [NSMutableArray array];
    int randNum = arc4random() % (rangeHigh-rangeLow+1) + rangeLow;
    int counter=0;
    while (counter<rangeHigh-rangeLow) {
        if (![unqArray containsObject:[NSNumber numberWithInt:randNum]]) {
            [unqArray addObject:[NSNumber numberWithInt:randNum]];
            counter++;
        }else{
            randNum = arc4random() % (rangeHigh-rangeLow+1) + rangeLow;
        }

    }
    [_randomNumbers addObjectsFromArray:unqArray];
    for(int j=0;j<6;j++){
        [_randomNumbers addObject:unqArray[j]];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self generateRandomUniqueNumberInRange:1 :49];
   
    // Do any additional setup after loading the view.
}

- (IBAction)btnLotto:(id)sender {
//    if (_randomNumbers.count > 0){
//        [_randomNumbers removeAllObjects];
//        for(int i=0;i<51;i++){
//            UILabel *number = [_numbers objectAtIndex:i];
//            [number setBackgroundColor:UIColor.clearColor];
//        }
//    }
//   
    
    for(int i=0;i<51;i++){
              UILabel *number = [_numbers objectAtIndex:i];
              for(int j=0;j<6;j++){
                  NSString *getNumber = [NSString stringWithFormat:@"%d", [_randomNumbers[j] intValue] ];
                  if([number.text isEqualToString:getNumber]){
                      [number setBackgroundColor:[UIColor redColor]];
                  }
              }
    }
}
@end
