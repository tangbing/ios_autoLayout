//
//  UserModel.h
//  AutoLayoutDemo
//
//  Created by Tb on 2017/7/2.
//  Copyright © 2017年 macTb. All rights reserved.
//

#import <UIKit/UIKit.h>
@class cmtModel;

@interface UserModel : NSObject

@property (nonatomic, copy)NSString* name;
@property (nonatomic, copy)NSString* text;
@property (nonatomic, copy)NSString* created_at;
@property (nonatomic, copy)NSString* profile_image;

@property (nonatomic, strong)cmtModel *top_cmt;
/** cell的高度 */
@property (nonatomic, assign) CGFloat cellHeight;


@end
