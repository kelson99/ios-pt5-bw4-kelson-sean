//
//  LSIPlace.h
//  PrivateYelp
//
//  Created by Sean Acres on 8/25/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIPlace : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *vicinity;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (instancetype)initWithName:(NSString *)name vicinity:(NSString *)vicinity;

@end

NS_ASSUME_NONNULL_END
