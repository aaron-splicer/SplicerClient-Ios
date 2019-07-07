//  Copyright (c) 2014 Jumbo Mobile. All rights reserved.
//

#import "JsonMapper.h"
/*
#import "User.h"
#import "SplicerRoot.h"
#import "Address.h"
 */
#import "SplicerClient-Swift-Bridging-Header.h"

@implementation JsonMapper

- (RKObjectMapping *)mapComplexTypes
{
    //generated
    RKObjectMapping *ModelRootMapping = [RKObjectMapping mappingForClass:[ModelsSplicerSplicerRoot class]];
    [ModelRootMapping addAttributeMappingsFromDictionary:@{
                                                           @"id": @"id__"
                                                           }];
     //mapKeyPath:@"id" toAttribute:@"Id_"];
  
    RKObjectMapping *UserMapping = [RKObjectMapping mappingForClass:[ModelsSplicerUser class]];
    [UserMapping addAttributeMappingsFromDictionary:@{
                                                      @"id": @"id__",
                                                      @"lastname": @"lastname_"
                                                      }];
     //mapKeyPath:@"id" toAttribute:@"Id_"];
      /*
    [UserMapping mapKeyPath:@"firstName" toAttribute:@"firstName"];
    [UserMapping mapKeyPath:@"lastName" toAttribute:@"lastName"];
       */
    
    
    RKObjectMapping *AddressMapping = [RKObjectMapping mappingForClass:[ModelsSplicerAddress class]];
    [AddressMapping addAttributeMappingsFromDictionary:@{
                                                      @"id": @"id__",
                                                      @"zip": @"zip_"
                                                      }];
     

    /*
    [AddressMapping mapKeyPath:@"id" toAttribute:@"Id_"];
    [AddressMapping mapKeyPath:@"state" toAttribute:@"state"];
    [AddressMapping mapKeyPath:@"street1" toAttribute:@"street1"];
    [AddressMapping mapKeyPath:@"street2" toAttribute:@"street2"];
    [AddressMapping mapKeyPath:@"city" toAttribute:@"city"];
    [AddressMapping mapKeyPath:@"zip" toAttribute:@"zip"];
       */
    [ModelRootMapping addRelationshipMappingWithSourceKeyPath:@"user" mapping:UserMapping];
    
    
   // [UserMapping addRelationshipMappingWithSourceKeyPath:@"address" mapping:AddressMapping];
    
    [UserMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"address" toKeyPath:@"address_" withMapping:AddressMapping]];
    
    
    //mapKeyPath:@"user" toRelationship:@"user" withMapping:UserMapping];
    //[UserMapping mapKeyPath:@"address" toRelationship:@"address" withMapping:AddressMapping];

    //end generated
    return UserMapping;
}

@end
