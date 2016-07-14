//
//  ViewController.m
//  ReverseString
//
//  Created by Brad Woodard on 7/13/16.
//  Copyright © 2016 elementC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reverseString];
}

- (void)reverseString {
    NSString *initialString = @"Hello World";
    NSInteger charIndex = [initialString length];
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:charIndex];
    
    while (charIndex > 0) {
        charIndex--;
        NSRange subRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[initialString substringWithRange:subRange]];
    }
    
    NSLog(@"Reversed String: \"%@\"", reversedString);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
