//
//  ViewController.m
//  NSsession
//
//  Created by kongyunpeng on 11/6/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"http://112.124.122.38/abc.php"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
  NSURLSessionDataTask *_tast =  [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"completed");
      NSString *output = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
      NSLog(@"%@",output);
    }];
    [_tast resume];
                  
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
