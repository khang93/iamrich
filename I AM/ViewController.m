//
//  ViewController.m
//  I AM
//
//  Created by Minh Khang on 2/22/16.
//  Copyright © 2016 Minh Khang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgRuby;

@property (weak, nonatomic) IBOutlet UIImageView *imgDola;

@property (weak, nonatomic) IBOutlet UIImageView *imgGirl;

@property (weak, nonatomic) IBOutlet UIImageView *imgHouse;

@property (weak, nonatomic) IBOutlet UIImageView *imgCar;

@property (weak, nonatomic) IBOutlet UILabel *lbDola;

@property (weak, nonatomic) IBOutlet UILabel *lbGirl;

@property (weak, nonatomic) IBOutlet UILabel *lbHouse;

@property (weak, nonatomic) IBOutlet UILabel *lbCar;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imgRuby.alpha = 0;
    self.lbDola.alpha = 0;
    self.lbGirl.alpha = 0;
    self.lbHouse.alpha = 0;
    self.lbCar.alpha = 0;
    self.imgDola.alpha = 1;
    self.imgGirl.alpha = 1;
    self.imgHouse.alpha = 1;
    self.imgCar.alpha = 1;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"ruby's alpha = %1.0f", self.imgRuby.alpha);
    [UIView animateWithDuration:2 animations:^{
        self.imgRuby.alpha = 1;
        NSLog(@"ruby's alpha = %1.0f", self.imgRuby.alpha);
        //150   300,
        self.imgCar.center = CGPointMake(150 , 300);
        self.imgGirl.center = CGPointMake(150 , 300);
        self.imgDola.center = CGPointMake(150 , 300);
        self.imgHouse.center = CGPointMake(150 , 300);
        
        self.lbDola.center = CGPointMake(self.lbDola.center.x , 200);
        self.lbDola.alpha = 1;
        self.lbGirl.center = CGPointMake(self.lbGirl.center.x , 200);
        self.lbGirl.alpha = 1;
        self.lbHouse.center = CGPointMake(self.lbHouse.center.x , 400);
        self.lbHouse.alpha = 1;
        self.lbCar.center = CGPointMake(self.lbCar.center.x , 400);
        self.lbCar.alpha = 1;

      
        
    } completion:^(BOOL finished) {
        /*[UIView animateWithDuration:6 animations:^{
            self.lbIAmRich.center = CGPointMake(self.lbIAmRich.center.x, 160);
            self.lbIAmRich.alpha = 1;
      
        }
         

        completion:nil];*/
    }];
    
}


@end
