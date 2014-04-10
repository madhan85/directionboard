//
//  DirectionboardViewController.m
//  Directionboard
//
//  Created by cdp on 4/10/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import "DirectionboardViewController.h"

@interface DirectionboardViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) UIView *foodCourt;

@end

@implementation DirectionboardViewController

- (void)loadImage
{
    UIImage *image = [UIImage imageNamed:@"direction_board.jpg"];
    self.scrollView.contentSize = image.size;
    self.imageView.image = image;
    self.imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
}

- (UIImageView *)imageView
{
    if(!_imageView) _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    return _imageView;
}

- (IBAction)tapGesture:(UITapGestureRecognizer *)sender
{
    CGPoint touchLocation = [sender locationInView:[self.foodCourt superview]];
    if(CGRectContainsPoint(self.foodCourt.frame, touchLocation)) {
        UIAlertView *wowAlert = [[UIAlertView alloc] initWithTitle:@"WOW" message:Nil delegate:Nil cancelButtonTitle:@"OK" otherButtonTitles:Nil, nil];
        [wowAlert show];
    }
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self.scrollView addSubview:self.imageView];
    [self loadImage];
    self.foodCourt = [[UIView alloc] initWithFrame:CGRectMake(310, 370, 80, 15)];
    [self.scrollView addSubview:self.foodCourt];
}

@end
