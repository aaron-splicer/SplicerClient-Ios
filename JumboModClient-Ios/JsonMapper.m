#import "JsonMapper.h"
#import "SplicerClient-Swift-Bridging-Header.h"

@implementation JsonMapper

- (RKObjectMapping *)mapComplexTypes
{
    //generated
    RKObjectMapping *SplicerRootMapping = [RKObjectMapping mappingForClass:[ModelsSplicerSplicerRoot class]];
    [SplicerRootMapping addAttributeMappingsFromDictionary:@{@"id":@"id__" }];
    RKObjectMapping *PersonMapping = [RKObjectMapping mappingForClass:[ModelsSplicerPerson class]];
    [PersonMapping addAttributeMappingsFromDictionary:@{@"firstName":@"firstName_" }];
    [PersonMapping addAttributeMappingsFromDictionary:@{@"lastName":@"lastName_" }];
    [PersonMapping addAttributeMappingsFromDictionary:@{@"id":@"id__" }];
    RKObjectMapping *AddressMapping = [RKObjectMapping mappingForClass:[ModelsSplicerAddress class]];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"city":@"city_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"state":@"state_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"street1":@"street1_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"street2":@"street2_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"zip":@"zip_" }];
    [AddressMapping addAttributeMappingsFromDictionary:@{@"id":@"id__" }];
    [SplicerRootMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"person" toKeyPath:@"person_" withMapping:PersonMapping]];
    [PersonMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"address" toKeyPath:@"address_" withMapping:AddressMapping]];

    //end generated

    return PersonMapping;
}

@end
