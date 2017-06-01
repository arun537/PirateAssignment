//
//  ViewController.m
//  PriateGame
//
//  Created by Arun Singh Chauhan on 5/31/17.
//  Copyright © 2017 Arun Singh Chauhan. All rights reserved.
//

#import "ViewController.h"
#import "PGFactory.h"
#import "PGCharacter.h"
#import "PGTile.h"
#import "PGWeapon.h"
#import "PGArmor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.chapterNumberRow = 0;
    self.chapterNumberColumn = 0;
    NSMutableArray* tiles= [PGFactory arrayOfTiles];
    NSMutableArray* firstRow = [[NSMutableArray alloc] init];
    NSMutableArray* secondRow = [[NSMutableArray alloc] init];
    NSMutableArray* thirdRow = [[NSMutableArray alloc] init];
    self.Chapters = [[NSMutableArray alloc] init];
    self.pirate = [[PGCharacter alloc] init];
    self.pirate.health = 100;
    self.pirate.damage = 5;
    self.Health.text = [NSString stringWithFormat:@"%li",self.pirate.health ];
    self.Damage.text = [NSString stringWithFormat:@"%i",self.pirate.damage];
    [firstRow addObject:tiles[0]];
    [firstRow addObject:tiles[1]];
    [secondRow addObject:tiles[2]];
    [secondRow addObject:tiles[3]];
    [thirdRow addObject:tiles[4]];
    [thirdRow addObject:tiles[5]];
    //NSLog(@"%@",((PGTile*)(firstRow[self.chapterNumber])).name);
    self.BackgroundImage.image = ((PGTile*)(firstRow[0])).backgroundImage;
    self.ChapterName.text = ((PGTile*)(firstRow[0])).name;
    self.StoryOfChapter.text = ((PGTile*)(firstRow[0])).story;
    [self.Chapters addObject:firstRow];
    [self.Chapters addObject:secondRow];
    [self.Chapters addObject:thirdRow];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)LeftButtonPressed:(UIButton *)sender {
    PGTile* current = [[PGTile alloc] init];
    if(self.chapterNumberColumn == 0 ){
        self.chapterNumberColumn = ((int)[self.Chapters count])-1;
        current = [[self.Chapters objectAtIndex:self.chapterNumberColumn] objectAtIndex:self.chapterNumberRow];
    }else{
        self.chapterNumberColumn = self.chapterNumberColumn-1;
        current = [[self.Chapters objectAtIndex:self.chapterNumberColumn] objectAtIndex:self.chapterNumberRow];
    }
    if([current.bonusElement isKindOfClass:[PGWeapon class]]){
        self.pirate.weapon = ((PGWeapon*)(current.bonusElement));
    }
    if([current.bonusElement isKindOfClass:[PGArmor class]]){
        
        self.pirate.armor = ((PGArmor*)(current.bonusElement));
    }
    if([current.bonusElement isKindOfClass:[NSNumber class]]){
        self.pirate.health = [self.Health.text integerValue] + [((NSNumber*)(current.bonusElement)) integerValue];
    }
    self.Health.text = [NSString stringWithFormat:@"%li",self.pirate.health];
    self.Damage.text = [NSString stringWithFormat:@"%i",self.pirate.damage];
    self.WeaponName.text = self.pirate.weapon.name;
    self.ArmorName.text = self.pirate.armor.name;
    self.ChapterName.text = current.name;
    self.StoryOfChapter.text= current.story;
    self.BackgroundImage.image = current.backgroundImage;
}

- (IBAction)RigthButtonPressed:(UIButton *)sender {
    PGTile* current = [[PGTile alloc] init];
    if(self.chapterNumberColumn == [self.Chapters count]-1){
        self.chapterNumberColumn = 0;
    }else{
        self.chapterNumberColumn = self.chapterNumberColumn+1;
    }
    current = [[self.Chapters objectAtIndex:self.chapterNumberColumn] objectAtIndex:self.chapterNumberRow];
    if([current.bonusElement isKindOfClass:[PGWeapon class]]){
        self.pirate.weapon = ((PGWeapon*)(current.bonusElement));
    }
    if([current.bonusElement isKindOfClass:[PGArmor class]]){
        
        self.pirate.armor = ((PGArmor*)(current.bonusElement));
    }
    if([current.bonusElement isKindOfClass:[NSNumber class]]){
        self.pirate.health = [self.Health.text integerValue] + [((NSNumber*)(current.bonusElement)) integerValue];
    }
    self.Health.text = [NSString stringWithFormat:@"%li",self.pirate.health];
    self.Damage.text = [NSString stringWithFormat:@"%i",self.pirate.damage];
    self.WeaponName.text = self.pirate.weapon.name;
    self.ArmorName.text = self.pirate.armor.name;
    self.ChapterName.text = current.name;
    self.StoryOfChapter.text= current.story;
    self.BackgroundImage.image = current.backgroundImage;
}

- (IBAction)UpButtonPressed:(UIButton *)sender {
    PGTile* current = [[PGTile alloc] init];
    if(self.chapterNumberRow == 0){
        self.chapterNumberRow = ((int)[self.Chapters[0] count])-1;
    }else{
        self.chapterNumberRow = self.chapterNumberRow-1;
    }
    current = [[self.Chapters objectAtIndex:self.chapterNumberColumn] objectAtIndex:self.chapterNumberRow];
    if([current.bonusElement isKindOfClass:[PGWeapon class]]){
        self.pirate.weapon = ((PGWeapon*)(current.bonusElement));
    }
    if([current.bonusElement isKindOfClass:[PGArmor class]]){
        
        self.pirate.armor = ((PGArmor*)(current.bonusElement));
    }
    if([current.bonusElement isKindOfClass:[NSNumber class]]){
        self.pirate.health = [self.Health.text integerValue] + [((NSNumber*)(current.bonusElement)) integerValue];
    }
    self.Health.text = [NSString stringWithFormat:@"%li",self.pirate.health];
    self.Damage.text = [NSString stringWithFormat:@"%i",self.pirate.damage];
    self.WeaponName.text = self.pirate.weapon.name;
    self.ArmorName.text = self.pirate.armor.name;
    self.ChapterName.text = current.name;
    self.StoryOfChapter.text= current.story;
    self.BackgroundImage.image = current.backgroundImage;
}

- (IBAction)DownButtonPressed:(UIButton *)sender {
    PGTile* current = [[PGTile alloc] init];
    if(self.chapterNumberRow == (([self.Chapters[0] count])-1)){
        self.chapterNumberRow = 0;
    }else{
        self.chapterNumberRow = self.chapterNumberRow+1;
    }
    current = [[self.Chapters objectAtIndex:self.chapterNumberColumn] objectAtIndex:self.chapterNumberRow];
    if([current.bonusElement isKindOfClass:[PGWeapon class]]){
        self.pirate.weapon = ((PGWeapon*)(current.bonusElement));
    }
    if([current.bonusElement isKindOfClass:[PGArmor class]]){
        
        self.pirate.armor = ((PGArmor*)(current.bonusElement));
    }
    if([current.bonusElement isKindOfClass:[NSNumber class]]){
        self.pirate.health = [self.Health.text integerValue] + [((NSNumber*)(current.bonusElement)) integerValue];
    }
    self.Health.text = [NSString stringWithFormat:@"%li",self.pirate.health];
    self.Damage.text = [NSString stringWithFormat:@"%i",self.pirate.damage];
    self.WeaponName.text = self.pirate.weapon.name;
    self.ArmorName.text = self.pirate.armor.name;
    self.ChapterName.text = current.name;
    self.StoryOfChapter.text= current.story;
    self.BackgroundImage.image = current.backgroundImage;
}




@end
