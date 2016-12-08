//
//  DialogViewController.m
//  testDemo
//
//  Created by yanminli on 2016/12/2.
//  Copyright © 2016年 s3graphics. All rights reserved.
//

#import "DialogViewController.h"

@interface DialogViewController ()

@end

@implementation DialogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, self.view.frame.size.height/2, 300, 50)];
    label.text = @"你好";
    label.backgroundColor = [UIColor redColor];
    //[self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5]];
    self.view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:label];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
