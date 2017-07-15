//  Copyright (c) 2014 Jumbo Mobile. All rights reserved.
//

#import "JsonMapper.h"
#import "ModelRootControllerService.h"

@implementation JsonMapper

- (RKObjectMapping *)mapComplexTypes
{
    //generated
    RKObjectMapping *ModelRootMapping = [RKObjectMapping mappingForClass:[ModelRootControllerService_ModelRoot class]];
    [ModelRootMapping mapKeyPath:@"id" toAttribute:@"Id_"];
    RKObjectMapping *UserMapping = [RKObjectMapping mappingForClass:[ModelRootControllerService_User class]];
    [UserMapping mapKeyPath:@"id" toAttribute:@"Id_"];
    [UserMapping mapKeyPath:@"firstName" toAttribute:@"firstName"];
    [UserMapping mapKeyPath:@"lastName" toAttribute:@"lastName"];
    RKObjectMapping *AddressMapping = [RKObjectMapping mappingForClass:[ModelRootControllerService_Address class]];
    [AddressMapping mapKeyPath:@"id" toAttribute:@"Id_"];
    [AddressMapping mapKeyPath:@"state" toAttribute:@"state"];
    [AddressMapping mapKeyPath:@"street1" toAttribute:@"street1"];
    [AddressMapping mapKeyPath:@"street2" toAttribute:@"street2"];
    [AddressMapping mapKeyPath:@"city" toAttribute:@"city"];
    [AddressMapping mapKeyPath:@"zip" toAttribute:@"zip"];
    [ModelRootMapping mapKeyPath:@"user" toRelationship:@"user" withMapping:UserMapping];
    [UserMapping mapKeyPath:@"address" toRelationship:@"address" withMapping:AddressMapping];

    //end generated

    return UserMapping;
}

@end
