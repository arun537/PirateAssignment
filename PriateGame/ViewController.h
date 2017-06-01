//
//  ViewController.h
//  PriateGame
//
//  Created by Arun Singh Chauhan on 5/31/17.
//  Copyright © 2017 Arun Singh Chauhan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PGCharacter.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *Health;
@property (strong, nonatomic) IBOutlet UILabel *Damage;
@property (strong, nonatomic) IBOutlet UILabel *WeaponName;
@property (strong, nonatomic) IBOutlet UILabel *ArmorName;
@property (strong, nonatomic) IBOutlet UILabel *ChapterName;
@property (strong, nonatomic) IBOutlet UILabel *StoryOfChapter;
@property (strong, nonatomic) IBOutlet UIImageView *BackgroundImage;
@property (nonatomic) int chapterNumberRow;
@property (nonatomic) int chapterNumberColumn;
@property (strong,nonatomic) NSMutableArray* Chapters;
@property (strong,nonatomic) PGCharacter* pirate;

- (IBAction)LeftButtonPressed:(UIButton *)sender;
- (IBAction)RigthButtonPressed:(UIButton *)sender;
- (IBAction)UpButtonPressed:(UIButton *)sender;
- (IBAction)DownButtonPressed:(UIButton *)sender;



@end

