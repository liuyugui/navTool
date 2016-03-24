//
//  nav_Line_Tool.h
//  navdemo
//
//  Created by liuyugui on 16/3/24.
//  Copyright © 2016年 mac. All rights reserved.
//  nav下的线条工具类

/**
 
使用方法：

 
//初始化nav
 [[nav_Line_Tool sharedNavLineTool]createNavLineToolWithArray:array andAddView:navview];
 
//设置他的位置
 [[nav_Line_Tool sharedNavLineTool] setNavLineToolWithIndex:btn.tag];
 
 
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//线条颜色
#define BACCOLOR [UIColor orangeColor]
//线的高度
#define LINEHEIGHT 4
//动画执行时间
#define TIME 0.3

@interface nav_Line_Tool : UIView

/**
 *  创建单例
 *
 *  @return 返回单例
 */
+ (instancetype)sharedNavLineTool;

/**
 *  创建nav工具
 *
 *  @param array   nav的数组，用来控制一条线的长度
 *  @param addView 添加到那个view上
 */
- (void)createNavLineToolWithArray:(NSArray *)array andAddView:(UIView *)addView;

/**
 *  设置线的位置
 *
 *  @param index 坐标
 */
- (void)setNavLineToolWithIndex:(int)index;


@end
