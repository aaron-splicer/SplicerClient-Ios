#import "JsonMapper.h"
#import "SplicerClient-Swift-Bridging-Header.h"

@implementation JsonMapper

- (RKObjectMapping *)mapComplexTypes
{
    //generated
    RKObjectMapping *UserMapping = [RKObjectMapping mappingForClass:[ModelsSplicerUser class]];
    [UserMapping addAttributeMappingsFromDictionary:@{@"firstname":@"firstname_" }];
    [UserMapping addAttributeMappingsFromDictionary:@{@"lastname":@"lastname_" }];
    [UserMapping addAttributeMappingsFromDictionary:@{@"id":@"id__" }];
    RKObjectMapping *SplicerRootMapping = [RKObjectMapping mappingForClass:[ModelsSplicerSplicerRoot class]];
    [SplicerRootMapping addAttributeMappingsFromDictionary:@{@"id":@"id__" }];
    RKObjectMapping *AddressMapping = [RKObjectMapping mappingForClass:[ModelsSplicerAddress class]];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"city":@"city_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"state":@"state_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"street1":@"street1_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"street2":@"street2_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"zip":@"zip_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"id":@"id__" }];
    [UserMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"address" toKeyPath:@"address_" withMapping:AddressMapping]];
    [SplicerRootMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"user" toKeyPath:@"user_" withMapping:UserMapping]];

    //end generated

    return UserMapping;
}

@end
