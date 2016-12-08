//
//  textView.m
//  testDemo
//
//  Created by yanminli on 2016/11/16.
//  Copyright © 2016年 s3graphics. All rights reserved.
//

#import "myTextView.h"

@interface myTextView()<UITextViewDelegate>

@property(nonatomic,strong) UITextView  *textView;

@end

@implementation myTextView


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //[self setupView];
}*/

-(id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupView];
    }
    
    return self;
}

-(void)setupView{
//    _backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
//    _backView.alpha = 1;
//    _backView.backgroundColor = [UIColor yellowColor];
//    [self addSubview:_backView];
    
    self.textView = [[UITextView alloc] init]; //初始化大小并自动释放
    self.textView.backgroundColor = [UIColor clearColor];
    self.textView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    self.textView.textColor = [UIColor blackColor];//设置textview里面的字体颜色
    self.textView.font = [UIFont fontWithName:@"Arial" size:18.0];//设置字体名字和字体大小
    self.textView.delegate = self;//设置它的委托方法
    self.textView.text = @"asfasfa阿斯顿发生大发撒放大离开家撒旦法按时付款就阿里；双方均asfasdfasfdalkjsflakj阿斯顿发生大发撒旦法asdfasdfaasfdaasa撒旦法；拉斯克奖发了奥斯卡奖罚洛杉矶的法律；看见谁发的阿斯利康就发；了数据库等法律按实际开发；阿里就开始放到了；安家费阿里山科技发达了开始将对方拉开始交电费了卡双方的空间啊发送卡飞机阿里开始就放暑假了罚款就是浪费asfasfa阿斯顿发生大发撒放大离开家撒旦法按时付款就阿里；双方均asfasdfasfdalkjsflakj阿斯顿发生大发撒旦法asdfasdfaasfdaasa撒旦法；拉斯克奖发了奥斯卡奖罚洛杉矶的法律；看见谁发的阿斯利康就发；了数据库等法律按实际开发；阿里就开始放到了；安家费阿里山科技发达了开始将对方拉开始交电费了卡双方的空间啊发送卡飞机阿里开始就放暑假了罚款就是浪费asfasfa阿斯顿发生大发撒放大离开家撒旦法按时付款就阿里；双方均asfasdfasfdalkjsflakj阿斯顿发生大发撒旦法asdfasdfaasfdaasa撒旦法；拉斯克奖发了奥斯卡奖罚洛杉矶的法律；看见谁发的阿斯利康就发；了数据库等法律按实际开发；阿里就开始放到了；安家费阿里山科技发达了开始将对方拉开始交电费了卡双方的空间啊发送卡飞机阿里开始就放暑假了罚款就是浪费";//设置它显示的内容
    self.textView.returnKeyType = UIReturnKeyDefault;//返回键的类型
    self.textView.keyboardType = UIKeyboardTypeDefault;//键盘类型
    self.textView.scrollEnabled = YES;//是否可以拖动
    //self.textView.autoresizingMask = UIViewAutoresizingFlexibleHeight;//自适应高度
//    CATransform3D transform3d = CATransform3DIdentity;
//    transform3d.m34 = -1.0/500.0;
//    transform3d = CATransform3DRotate(transform3d, M_PI_4, 1, 0, 0);
//    self.textView.layer.transform = transform3d;

    [self addSubview: self.textView];//加入到整个页面中
}


//结束编辑
- (void)textViewDidEndEditing:(UITextView *)textView{
    _textView.editable = NO;
}

//退出键盘
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if ([text isEqualToString:@"\n"]) {
        
        [textView resignFirstResponder];
        
        return NO;
        
    }
    
    return YES;
    
}

-(void)animationTextView{
    [UIView animateWithDuration:6 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.textView.frame = CGRectMake(0, -self.frame.size.height, self.frame.size.width, self.frame.size.height);
    }completion:nil];
}



@end
