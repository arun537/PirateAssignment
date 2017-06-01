//
//  PGCharacter.h
//  PriateGame
//
//  Created by Arun Singh Chauhan on 5/31/17.
//  Copyright © 2017 Arun Singh Chauhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PGArmor.h"
#import "PGWeapon.h"

@interface PGCharacter : NSObject

@property (nonatomic) long health;
@property (nonatomic) int damage;
@property (strong,nonatomic) PGArmor* armor;
@property (strong,nonatomic) PGWeapon* weapon;

@end
