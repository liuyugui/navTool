//
//  nav_Line_Tool.m
//  navdemo
//
//  Created by liuyugui on 16/3/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "nav_Line_Tool.h"

@implementation nav_Line_Tool


/**
 *  创建单例
 *
 *  @return 返回单例
 */
static nav_Line_Tool * _navLine ;
+ (instancetype)sharedNavLineTool{

    if (_navLine == nil) {
        
        _navLine = [[nav_Line_Tool alloc]init];
        
    }
    
    return _navLine;
}

/**
 *  创建nav工具
 *
 *  @param array   nav的数组，用来控制一条线的长度
 *  @param addView 添加到那个view上
 */
- (void)createNavLineToolWithArray:(NSArray *)array andAddView:(UIView *)addView{
    
    self.backgroundColor = BACCOLOR;
    
    [addView addSubview:self];
    
    
    if ([addView isKindOfClass:[UIScrollView class]]) {
        
        
        UIScrollView * scView = (UIScrollView *)addView;
        
        self.frame = CGRectMake(0, scView.frame.size.height-LINEHEIGHT, scView.contentSize.width/array.count, LINEHEIGHT);
        
    }else{
        
        self.frame = CGRectMake(0, addView.frame.size.height-LINEHEIGHT, addView.frame.size.width/array.count, LINEHEIGHT);
    
    }
    
    NSLog(@"%@",NSStringFromCGRect(self.frame));
    
    
    
}

/**
 *  设置线的位置
 *
 *  @param index 坐标
 */
- (void)setNavLineToolWithIndex:(int)index{


    [UIView animateWithDuration:TIME animations:^{
       
        self.frame = CGRectMake(self.frame.size.width * index, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
        
        NSLog(@"%@",NSStringFromCGRect(self.frame));
    }];

}



@end
