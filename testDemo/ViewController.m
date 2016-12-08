//
//  ViewController.m
//  testDemo
//
//  Created by yanminli on 2016/11/11.
//  Copyright © 2016年 s3graphics. All rights reserved.
//

#import "ViewController.h"
#import "sinDemo.h"
#import "myTextView.h"
#import "NSString+Extension.h"
#import "gradientView.h"
#import "DialogViewController.h"
#import "CustomPushAnimation.h"


NSString * str1 = @"asfasfa阿斯顿发生大发撒放大离开家撒旦法按时付款就阿里；双方均asfasdfasfdalkjsflakj阿斯顿发生大发撒旦法asdfasdfaasfdaasa撒旦法；拉斯克奖发了奥斯卡奖罚洛杉矶的法律；看见谁发的阿斯利康就发；了数据库等法律按实际开发；阿里就开始放到了；安家费阿里山科技发达了开始将对方拉开始交电费了卡双方的空间啊发送卡飞机阿里开始就放暑假了罚款就是浪费asfasfa阿斯顿发生大发撒放大离开家撒旦法按时付款就阿里；双方均asfasdfasfdalkjsflakj阿斯顿发生大发撒旦法asdfasdfaasfdaasa撒旦法；拉斯克奖发了奥斯卡奖罚洛杉矶的法律；看见谁发的阿斯利康就发；了数据库等法律按实际开发；阿里就开始放到了；安家费阿里山科技发达了开始将对方拉开始交电费了卡双方的空间啊发送卡飞机阿里开始就放暑假了罚款就是浪费asfasfa阿斯顿发生大发撒放大离开家撒旦法按时付款就阿里；双方均asfasdfasfdalkjsflakj阿斯顿发生大发撒旦法asdfasdfaasfdaasa撒旦法；拉斯克奖发了奥斯卡奖罚洛杉矶的法律；看见谁发的阿斯利康就发；了数据库等法律按实际开发；阿里就开始放到了；安家费阿里山科技发达了开始将对方拉开始交电费了卡双方的空间啊发送卡飞机阿里开始就放暑假了罚款就是浪费";
@interface ViewController ()<CAAnimationDelegate,UINavigationBarDelegate>{
    UIView *container;
    UIView *view0;
    UIView *view1;
}

@property (nonatomic,strong) UILabel        *lable;
@property (nonnull,strong) gradientView *centerButton;
@property (nonatomic,strong) CAShapeLayer   *testLayer;
@property (nonatomic,strong) CAShapeLayer   *testLayer1;
@property (nonatomic,strong) myTextView    *txtView;
@property (nonatomic,strong) UIImageView    *imgView;
@property (nonatomic,strong) DialogViewController    *dig;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
         
    
    
    
}
- (IBAction)buttonclick:(id)sender {
    //[self.txtView animationTextView];
//    [UIView animateWithDuration:1 animations:^{
//        
//        CGAffineTransform trans = CGAffineTransformMakeRotation(-M_PI_4);
//        _imgView.layer.affineTransform = trans;
//       
//    }];
    
//    UIAlertController *alertDialog = [UIAlertController alertControllerWithTitle:nil message:@"      正在校验校验码！" preferredStyle:UIAlertControllerStyleAlert];
//   
//    
//    [self presentViewController:alertDialog animated:YES completion:^{
//        [UIView animateWithDuration:3 animations:^{
//            [alertDialog dismissViewControllerAnimated:YES completion:^(void){
//                
//            }];
//
//        }];
//    }];
    
   

//    [self presentViewController:_dig animated:YES completion:^{
//        [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(scrollTimer) userInfo:nil repeats:NO];
//        
//    }];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:@"标题的提示信息" preferredStyle:UIAlertControllerStyleActionSheet];
    
    dispatch_time_t delayTime3 = dispatch_time(DISPATCH_TIME_NOW, 3*NSEC_PER_SEC);
    [self presentViewController:alertController animated:YES completion:^{
        dispatch_queue_t mainQueue = dispatch_get_main_queue();
       
        dispatch_after(delayTime3, mainQueue, ^{
            [alertController dismissViewControllerAnimated:YES completion:nil];
        });
    }];
}




-(void)scrollTimer{
    [_dig dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CABasicAnimation *)ImgViewShadowOpacity:(CGFloat)fromVal toVal:(CGFloat)toVal duration:(CGFloat)duration {
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"opacity"];
    anim.fromValue = [NSNumber numberWithFloat:fromVal];
    anim.toValue =[NSNumber numberWithFloat:toVal];
    anim.duration = duration;
    anim.removedOnCompletion = NO;
    anim.fillMode = kCAFillModeForwards;
    anim.delegate = self;
    return anim;
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    if ([_centerButton.layer animationForKey:@"imgOpacity"] == anim) {
        
        [_centerButton.layer removeAllAnimations];
        [_centerButton.layer addAnimation:[self ImgViewShadowOpacity:0.7 toVal:1 duration:0.01] forKey:@"myShadowOpacity1"];
        
        
    }else if ([_centerButton.layer animationForKey:@"myShadowOpacity1"] == anim) {
        
        [_centerButton.layer removeAllAnimations];
        [_centerButton.layer addAnimation:[self ImgViewShadowOpacity:1 toVal:0.3 duration:0.4] forKey:@"myShadowOpacity2"];
        
        
    }else if ([_centerButton.layer animationForKey:@"myShadowOpacity2"] == anim) {
        
        [_centerButton.layer removeAllAnimations];
        [_centerButton.layer addAnimation:[self ImgViewShadowOpacity:0.5 toVal:1 duration:0.4] forKey:@"imgOpacity"];
        
        
    }
    
}


-(CABasicAnimation *)opacityForever_Animation:(float)time

{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];//必须写opacity才行。

    animation.fromValue = [NSNumber numberWithFloat:1.0f];
    animation.toValue = [NSNumber numberWithFloat:0.0f];//这是透明度。
    animation.autoreverses = YES;
    animation.duration = time;
    animation.repeatCount = MAXFLOAT;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];///没有的话是均匀的动画。

    return animation;
    
}
@end
