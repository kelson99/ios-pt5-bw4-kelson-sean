//
//  LSIPlace.m
//  PrivateYelp
//
//  Created by Sean Acres on 8/25/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

#import "LSIPlace.h"

@implementation LSIPlace

- (instancetype)initWithName:(NSString *)name vicinity:(NSString *)vicinity
{
    if (self = [super init]) {
        _name = name.copy;
        _vicinity = vicinity.copy;
    }
    
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSString *name = [dictionary objectForKey:@"name"];
    NSString *vicinity = [dictionary objectForKey:@"vicinity"];
    
    return [self initWithName:name vicinity:vicinity];
}

@end
