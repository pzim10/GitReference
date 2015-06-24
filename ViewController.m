//
//  ViewController.m
//  GitReference
//
//  Created by Peter Zimmerman on 6/23/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UILabel *myTitle;
@property (nonatomic, strong) UILabel *label1, *label1b, *label2, *label2b, *label3, *label3b,
*label4, *label4b, *label5, *label5b, *label6, *label6b, *label7, *label7b, *label8;
@end

@implementation ViewController

const int margin = 30;
int labelGapY;
int labelSizeX;
int labelSizeY;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Create Scroll View
    _scrollView = [UIScrollView new];
    _scrollView.frame = self.view.frame;
    //    _scrollView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_scrollView];
    _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width, _scrollView.frame.size.height * 1.5);
    //  Create Title
    _myTitle = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2 - 50, 10, 200, 75)];
    _myTitle.text = @"Git Reference";
    [_scrollView addSubview:_myTitle];
    
    // Label 1
    _label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, _myTitle.frame.size.height / 2 + margin, _scrollView.frame.size.width / 5, _scrollView.frame.size.width / 15)];
    [_scrollView addSubview:_label1];
    _label1.text = @"Git status:";
    
    labelGapY = _myTitle.frame.size.height / 2 + margin;
    labelSizeX = _scrollView.frame.size.width / 5;
    labelSizeY = _scrollView.frame.size.width / 15;
    
    _label1b = [[UILabel alloc] initWithFrame:CGRectMake(margin, labelSizeY+labelGapY, labelSizeX, labelSizeY)];
    _label1b.text = @"shows changed files";
    [_scrollView addSubview:_label1b];
    
    // Label 2
    _label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 2*labelGapY, labelSizeX, labelSizeY)];
    [_scrollView addSubview:_label2];
    _label2.text = @"Git diff:";
    
    _label2b = [[UILabel alloc] initWithFrame:CGRectMake(margin, labelSizeY+ 2*labelGapY, labelSizeX, labelSizeY)];
    _label2b.text = @"shows actual changed files";
    [_scrollView addSubview:_label2b];
    
    // Label 3
    _label3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 3*labelGapY, labelSizeX, labelSizeY)];
    [_scrollView addSubview:_label3];
    _label3.text = @"Git add:";
    
    _label3b = [[UILabel alloc] initWithFrame:CGRectMake(margin, labelSizeY+ 3*labelGapY, labelSizeX, labelSizeY)];
    _label3b.text = @"adds changed files to the commit";
    [_scrollView addSubview:_label3b];
    
    // Label 4
    _label4 = [[UILabel alloc] initWithFrame:CGRectMake(0, 4*labelGapY, labelSizeX, labelSizeY)];
    [_scrollView addSubview:_label4];
    _label4.text = @"Git commit -m \"notes\"";
    
    _label4b = [[UILabel alloc] initWithFrame:CGRectMake(margin, labelSizeY+ 4*labelGapY, labelSizeX, labelSizeY)];
    _label4b.text = @"commits the changes";
    [_scrollView addSubview:_label4b];
    
    // Label 5
    _label5 = [[UILabel alloc] initWithFrame:CGRectMake(0, 5*labelGapY, labelSizeX, labelSizeY)];
    [_scrollView addSubview:_label5];
    _label5.text = @"Git push origin _branch_:";
    
    _label5b = [[UILabel alloc] initWithFrame:CGRectMake(margin, labelSizeY+ 5*labelGapY, labelSizeX, labelSizeY)];
    _label5b.text = @"pushes commits to branch named _branch_";
    [_scrollView addSubview:_label5b];
    
    // Label 6
    _label6 = [[UILabel alloc] initWithFrame:CGRectMake(0, 6*labelGapY, labelSizeX, labelSizeY)];
    [_scrollView addSubview:_label6];
    _label6.text = @"Git log:";
    
    _label6b = [[UILabel alloc] initWithFrame:CGRectMake(margin, labelSizeY+ 6*labelGapY, labelSizeX, labelSizeY)];
    _label6b.text = @"displays progress log";
    [_scrollView addSubview:_label6b];
    
    // Label 7
    _label7 = [[UILabel alloc] initWithFrame:CGRectMake(0, 7*labelGapY, labelSizeX, labelSizeY)];
    [_scrollView addSubview:_label7];
    _label7.text = @"Git comment --amend:";
    
    _label7b = [[UILabel alloc] initWithFrame:CGRectMake(margin, labelSizeY+ 7*labelGapY, labelSizeX, labelSizeY)];
    _label7b.text = @"re-enter last commit message";
    [_scrollView addSubview:_label7b];
    
    // This code is to test combining my variables label# && label#b into a single instance
    // Label 8
    _label8 = [[UILabel alloc] initWithFrame:CGRectMake(0, 8*labelGapY, labelSizeX, labelSizeY)];
    [_scrollView addSubview:_label8];
    _label8.text = @"Git testing:/n/t Test 1";
}
//  @{Command: @"git status", Reference: @": shows changed files"},
//@{Command: @"git diff", Reference: @": shows actual changes"},
//@{Command: @"git add .", Reference: @": adds changed files to the commit"},
//@{Command: @"git commit -m \"notes\"", Reference: @": commits the changes"},
//@{Command: @"git push origin _branch_", Reference: @": pushes commits to branch named _branch_"},
//@{Command: @"git log", Reference: @": displays progress log"},
//@{Command: @"git comment --amend", Reference: @": re-enter last commit message"}
//];

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
