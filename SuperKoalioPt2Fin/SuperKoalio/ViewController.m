//
//  ViewController.m
//  SuperKoalio
//
//  Created by Jake Gundersen on 12/27/13.
//  Copyright (c) 2013 Razeware, LLC. All rights reserved.
//

#import "ViewController.h"
#import "GameLevelScene.h"

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  
  // Configure the view.
  SKView * skView = (SKView *)self.view;
  skView.showsFPS = YES;
  skView.showsNodeCount = YES;
  
  // Create and configure the scene.
  SKScene * scene = [GameLevelScene sceneWithSize:skView.bounds.size];
  scene.scaleMode = SKSceneScaleModeAspectFill;
  
  // Present the scene.
  [skView presentScene:scene];
  
  CGRect frame = CGRectMake(21, 240, 67, 23);
  UILabel *forwardLabel =[[UILabel alloc] initWithFrame: frame];
  forwardLabel.textColor = [UIColor darkGrayColor];
  forwardLabel.text = @"Forward";
  [self.view addSubview:forwardLabel];
  
  CGRect backwardframe = CGRectMake(21, 80, 77, 23);
  UILabel *backwardLabel =[[UILabel alloc] initWithFrame: backwardframe];
  backwardLabel.textColor = [UIColor darkGrayColor];
  backwardLabel.text = @"Backward";
  [self.view addSubview:backwardLabel];
  
  CGRect jumpframe = CGRectMake(250, 160, 77, 23);
  UILabel *jumpLabel =[[UILabel alloc] initWithFrame: jumpframe];
  jumpLabel.textColor = [UIColor darkGrayColor];
  jumpLabel.text = @"Jump";
  [self.view addSubview:jumpLabel];

}

- (BOOL)shouldAutorotate
{
  return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
  return UIInterfaceOrientationMaskLandscape;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Release any cached data, images, etc that aren't in use.
}

@end
