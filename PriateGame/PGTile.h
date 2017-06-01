//
//  PGTile.h
//  PriateGame
//
//  Created by Arun Singh Chauhan on 5/31/17.
//  Copyright © 2017 Arun Singh Chauhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PGTile : NSObject

@property (nonatomic) UIImage* backgroundImage;
@property (nonatomic) NSString* story;
@property (nonatomic) NSString* name;
@property (nonatomic) id bonusElement;

@end
