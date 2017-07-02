//
//  UserModel.h
//  AutoLayoutDemo
//
//  Created by Tb on 2017/7/2.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UserModel : NSObject

@property (nonatomic, copy)NSString* nick;
@property (nonatomic, copy)NSString* conetent;
@property (nonatomic, copy)NSString* comment;


/** cell的高度 */
@property (nonatomic, assign) CGFloat cellHeight;


@end
