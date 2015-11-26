//
//  ViewController.m
//  GItDemo
//
//  Created by 李伟 on 15/11/24.
//  Copyright (c) 2015年 a. All rights reserved.
//

#import "ViewController.h"
#import "TestClass.h"
//导入支持发短信的库
#import <MessageUI/MessageUI.h>
@interface ViewController ()<MFMessageComposeViewControllerDelegate>
@property(nonatomic,strong)NSString *git;

@property(nonatomic,strong)TestClass *textClass;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    [self.view setAlpha:0.5];
//
   // NSString *phon = @"sms://13841302445";
//    NSString *phon = @"tel://110";
//    NSURL *url =[NSURL URLWithString:phon];
//    [[UIApplication sharedApplication] openURL:url];
    
    
    
    
[self showMess];
    
    //////////
    //NSLog(@"init");
    [self say];
   // NSLog(@"init");
    [self seconBranch];
   
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)showMess{

    if ([MFMessageComposeViewController canSendText]) {
        MFMessageComposeViewController *mfVc = [[MFMessageComposeViewController alloc]init];
        mfVc.recipients = [NSArray arrayWithObject:@"13841302445"];
        
        mfVc.body = @"发短信内容,发短信,";
        mfVc.messageComposeDelegate = self;
        [self presentViewController:mfVc animated:YES completion:nil];
        [[[[mfVc viewControllers] lastObject] navigationItem] setTitle:@"标题"];
                [self.view setBackgroundColor:[UIColor greenColor]];
        
        
        
    }else{
    //tip error
        [self alertWithTitle:@"提示信息" msg:@"设备发不了信息!"];
        [self.view setBackgroundColor:[UIColor redColor]];
    
    }



}

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{

    [controller dismissViewControllerAnimated:NO completion:nil];
    switch (result) {
        case MessageComposeResultCancelled:
            [self alertWithTitle:@"提示信息" msg:@"取消发送"];
            break;
            case MessageComposeResultFailed:
            [self alertWithTitle:@"提示信息" msg:@"发送失败"];
            case MessageComposeResultSent:
            [self alertWithTitle:@"提示信息" msg:@"发送成功"];
            
        default:
            break;
    }
    
    

}
-(void)alertWithTitle:(NSString *)title msg:(NSString *)msg{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title message:msg delegate:self cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
    
    [alert show];



}

-(void)seconBranch{
    NSLog(@"第二个分支");
}
-(void)say{

    NSLog(@"添加分支");


  
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
