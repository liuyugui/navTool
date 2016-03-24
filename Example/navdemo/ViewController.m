//
//  ViewController.m
//  navdemo
//
//  Created by liuyugui on 16/3/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

#import "nav_Line_Tool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIScrollView * navview = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 40, self.view.frame.size.width, 60)];
    [self.view addSubview:navview];
    navview.backgroundColor = [UIColor redColor];
    
    navview.contentSize = CGSizeMake(1000, 0);
    
    
    NSArray * array = @[@"1",@"2",@"3",@"4"];
    
    for (int i = 0; i<array.count; i++) {
        
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [btn setTitle:array[i] forState:UIControlStateNormal];
        
        btn.frame = CGRectMake(i*(navview.contentSize.width/array.count), 0, navview.contentSize.width/array.count, navview.frame.size.height);
    
        [navview addSubview:btn];
        
        [btn addTarget:self action:@selector(navClick:) forControlEvents:UIControlEventTouchUpInside];
        
        btn.tag = i;
    }

    
    //初始化nav
    [[nav_Line_Tool sharedNavLineTool]createNavLineToolWithArray:array andAddView:navview];
    
    
}


- (void)navClick:(UIButton *)btn{

    [[nav_Line_Tool sharedNavLineTool] setNavLineToolWithIndex:(int)btn.tag];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
