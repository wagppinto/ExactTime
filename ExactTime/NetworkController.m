//
//  NetworkController.m
//  ExactTime
//
//  Created by Wagner Pinto on 3/3/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "NetworkController.h"
#import "AFNetworking.h"


NSString * const baseURL = @"http://time.jsontest.com";

@interface NetworkController ()

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

@end

@implementation NetworkController

-(instancetype)init {
    self = [super init];
    
    if (self) {
        self.sessionManager = [[AFHTTPSessionManager alloc]initWithBaseURL:[NSURL URLWithString:baseURL]sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        
    }
    return self;
}

-(void)getExactTimeInfo:(void (^)(NSDictionary *, NSError *))completion{
    [self.sessionManager GET:@"/" parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        completion (responseObject, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(nil, error);
    }];
}




@end
