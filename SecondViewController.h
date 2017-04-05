//
//  SecondViewController.h
//  Block反向传值
//
//  Created by cocolee on 2017/4/5.
//  Copyright © 2017年 cocolee. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ReturnBlock)(NSString*TextStr);


@interface SecondViewController : UIViewController
@property(nonatomic,strong)NSString*Str;
@property(nonatomic,strong)UITextField *TextShow;
@property(nonatomic,strong)UIButton *Btn;
@property(nonatomic,copy)ReturnBlock returnblock;

-(void)returnStr:(ReturnBlock)returnblock;




@end
