//
//  SecondViewController.m
//  Block反向传值
//
//  Created by cocolee on 2017/4/5.
//  Copyright © 2017年 cocolee. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self Btn];
    [self TextShow];
    
    
}


-(void)returnStr:(ReturnBlock)returnblock{
    self.returnblock = returnblock;
}

-(UIButton*)Btn{
    if (!_Btn) {
        _Btn =[UIButton buttonWithType:UIButtonTypeCustom];
        _Btn.frame = CGRectMake(10, 200, 100, 50);
        [_Btn setTitle:@"返回" forState:UIControlStateNormal];
        [_Btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _Btn.backgroundColor =[UIColor grayColor];
        [_Btn addTarget:self action:@selector(GoBack:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_Btn];
    }
    return _Btn;
    
}

-(UITextField*)TextShow{
    if (!_TextShow) {
        _TextShow =[[UITextField alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 50)];
        _TextShow.backgroundColor =[UIColor grayColor];
        [self.view addSubview:_TextShow];
    }
    return _TextShow;
}


-(void)GoBack:(id)sender{
    self.Str = _TextShow.text;
    if (self.returnblock) {
        _returnblock(self.Str);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
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
