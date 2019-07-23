//
//  JsonMapper.h
//  JumboModClient-Ios
//
//  Created by Aaron Evans on 12/3/14.
//  Copyright (c) 2014 Jumbo Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

@interface JsonMapper : NSObject  
- (RKObjectMapping *)mapComplexTypes;
@end
