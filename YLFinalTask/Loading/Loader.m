//
//  Loader.m
//  YLFinalTask
//
//  Created by Юлия Лопатина on 8/20/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import "Loader.h"
#import "JSONParser.h"
#import "SupermanItem.h"
#import "ImageDownloadOperation.h"

@interface Loader ()

@property (nonatomic, strong) NSURLSession *session;
@property JSONParser *parser;
@property (strong, nonatomic) NSOperationQueue *queue;
@property (strong, nonatomic) NSMutableDictionary<NSString *, NSArray<NSOperation *> *> *operations;
@end

@implementation Loader
- (instancetype)initWithParser:(JSONParser *) parser {
    self = [super init];
    if (self) {
        _parser = parser;
        _queue = [NSOperationQueue new];
        _operations = [NSMutableDictionary new];
        
    }
    return self;
}

-(NSURLSession *)session {
    if (!_session) {
        
        _session = [NSURLSession sharedSession];
    }
    return _session;
}



- (void)load:(void (^)(NSArray<SupermanItem *> *, NSError *))completion {
    NSURL *url = [NSURL URLWithString:@"https://akabab.github.io/superhero-api/api/all.json"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"GET";
    
    NSURLSessionDataTask *dataTask = [self.session dataTaskWithRequest:request
                                                     completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            completion(nil, error);
            return;
        }
        [self.parser parseSupermen:data completion:completion];
    }];
    
    [dataTask resume];
}

- (void)loadImageForURL:(NSString *)url completion:(void (^)(UIImage *))completion {
    
    [self cancelDownloadingForUrl:url];
    ImageDownloadOperation *operation = [[ImageDownloadOperation alloc] initWithUrl:url];
    self.operations[url] = @[operation];
    operation.completion = ^(UIImage *image) {
        completion(image);
        NSLog(@"%@", image);
    };
    [self.queue addOperation:operation];
}

- (void)cancelDownloadingForUrl:(NSString *)url {
    NSArray<NSOperation *> *operations = self.operations[url];
    if (!operations) { return; }
    for (NSOperation *operation in operations) {
        [operation cancel];
    }
}
@end
