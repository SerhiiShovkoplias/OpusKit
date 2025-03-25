#import <Foundation/Foundation.h>

@interface OpusKitEncoder : NSObject

- (instancetype)initWithURL:(NSURL *)url;
- (void)startWithCompletion:(void (^)(NSString *, int32_t))completion; // path, duration

@end
