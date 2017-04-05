//
//  ViewController.m
//  Block反向传值
//
//  Created by cocolee on 2017/4/5.
//  Copyright © 2017年 cocolee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self Btn];
    [self ShowLabel];
    
    
}

-(UIButton*)Btn{
    if (!_Btn) {
        _Btn =[UIButton buttonWithType:UIButtonTypeCustom];
        _Btn.frame = CGRectMake(10, 200, 100, 50);
        [_Btn setTitle:@"跳转" forState:UIControlStateNormal];
        [_Btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _Btn.backgroundColor =[UIColor grayColor];
        [_Btn addTarget:self action:@selector(Go:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_Btn];
    }
    return _Btn;
    
}

-(UILabel*)ShowLabel{
    if (!_ShowLabel) {
        _ShowLabel =[[UILabel alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 50)];
        _ShowLabel.backgroundColor =[UIColor grayColor];
        [self.view addSubview:_ShowLabel];
    }
    return _ShowLabel;
}

-(void)Go:(id)sender{
    SecondViewController *Sec =[[SecondViewController alloc]init];
    [Sec returnStr:^(NSString *TextStr) {
    _ShowLabel.text = TextStr;
}];
    [self.navigationController pushViewController:Sec animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
