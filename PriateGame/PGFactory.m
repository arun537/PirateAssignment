//
//  PGFactory.m
//  PriateGame
//
//  Created by Arun Singh Chauhan on 5/31/17.
//  Copyright © 2017 Arun Singh Chauhan. All rights reserved.
//

#import "PGFactory.h"
#import "PGTile.h"
#import "PGWeapon.h"
#import "PGArmor.h"

@implementation PGFactory

+(NSMutableArray*) arrayOfTiles{
    NSMutableArray* factoryTiles = [[NSMutableArray alloc] init];
    
    PGTile* firstTile = [[PGTile alloc] init];
    firstTile.name = @"Starting Journey";
    firstTile.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    firstTile.story = @"Pirate Bob is Starting its journey its journey to be a pirate king";
    
    PGTile* secondTile = [[PGTile alloc] init];
    secondTile.name = @"Friendly Dock";
    secondTile.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    secondTile.story = @"Pirate Bob is at the Dock in his friendly teritory from where he got weapons for starting his journey";
    PGWeapon* stageOneWeapon = [[PGWeapon alloc] init];
    stageOneWeapon.name = @"normalBlade";
    stageOneWeapon.damage = 5;
    secondTile.bonusElement = stageOneWeapon;
    
    
    PGTile* thirdTile = [[PGTile alloc] init];
    thirdTile.name = @"Black Smith";
    thirdTile.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    thirdTile.story = @"Priate Bob meets the well known blacksmith which offers him his best Armor because of his will";
    PGArmor* stageThirdArmor = [[PGArmor alloc] init];
    stageThirdArmor.name = @"normalArmor";
    stageThirdArmor.healthBonus = 100;
    thirdTile.bonusElement = stageThirdArmor;
    
    PGTile* forthTile = [[PGTile alloc] init];
    forthTile.name = @"Attack By Octopus";
    forthTile.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    forthTile.story = @"in his way to sailing in the sea he an hungry octopus attack his ship whichj damage him a lot. He some how manged to avoid the atack but injured seriously";
    NSNumber* damageByOctopus = [[NSNumber alloc] initWithInt:-60];
    forthTile.bonusElement = damageByOctopus;
    
    PGTile* fifthTile = [[PGTile alloc] init];
    fifthTile.name = @"on the way to survival";
    fifthTile.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    fifthTile.story = @"after getting injured by octopus pirate rifting in sea he is founded by some people who healed him and leave him to a unknown island";
    NSNumber* healed = [[NSNumber alloc] initWithInt:40];
    fifthTile.bonusElement = healed;
    
    
    PGTile* sixthTile = [[PGTile alloc] init];
    sixthTile.name = @"Pirate found his beat friend";
    sixthTile.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    sixthTile.story = @"on the island he was left he found a parrot which come to him by his own and the parrot is also wearing a eye patch same as that of the Boob";
    
    [factoryTiles addObject:firstTile];
    [factoryTiles addObject:secondTile];
    [factoryTiles addObject:thirdTile];
    [factoryTiles addObject:forthTile];
    [factoryTiles addObject:fifthTile];
    [factoryTiles addObject:sixthTile];
    
    PGTile* seventhTile = [[PGTile alloc] init];
    PGTile* eighthTile = [[PGTile alloc] init];
    PGTile* ninthTile = [[PGTile alloc] init];
    PGTile* tenthTile = [[PGTile alloc] init];
    PGTile* eleventhTile = [[PGTile alloc] init];
    PGTile* twelvethTile = [[PGTile alloc] init];
    return factoryTiles;
}

@end
