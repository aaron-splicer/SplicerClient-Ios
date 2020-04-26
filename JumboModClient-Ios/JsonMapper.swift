//
//  JsonMapper.swift
//  SplicerClient-Swift
//
//  Created by Aaron Evans on 4/16/20.
//  Copyright © 2020 Aaron Evans. All rights reserved.
//

import Foundation
import RestKit

class JsonMapper {
    var GameMapping: RKObjectMapping!;
    var LocationMapping: RKObjectMapping!;
    
    func mapComplexTypes() -> RKObjectMapping? {
        //generated
        let AcctMapping = RKObjectMapping(for: ModelsSportsAcct.self);
        AcctMapping?.addAttributeMappings(from: ["id":"id__" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctactivationStateMapping = RKAttributeMapping(fromKeyPath: "activationState", toKeyPath: "activationState_")
        AcctactivationStateMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctactivationStateMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctactivationTokenMapping = RKAttributeMapping(fromKeyPath: "activationToken", toKeyPath: "activationToken_")
        AcctactivationTokenMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctactivationTokenMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctactivationTokenExpiresAtMapping = RKAttributeMapping(fromKeyPath: "activationTokenExpiresAt", toKeyPath: "activationTokenExpiresAt_")
        AcctactivationTokenExpiresAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctactivationTokenExpiresAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctcreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        AcctcreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctcreatedAtMapping)
        AcctMapping?.addAttributeMappings(from: ["crossDomainCode":"crossDomainCode_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctcryptedPasswordMapping = RKAttributeMapping(fromKeyPath: "cryptedPassword", toKeyPath: "cryptedPassword_")
        AcctcryptedPasswordMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctcryptedPasswordMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctemailMapping = RKAttributeMapping(fromKeyPath: "email", toKeyPath: "email_")
        AcctemailMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctemailMapping)
        AcctMapping?.addAttributeMappings(from: ["loggedin":"loggedin_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctoldCryptedPasswordMapping = RKAttributeMapping(fromKeyPath: "oldCryptedPassword", toKeyPath: "oldCryptedPassword_")
        AcctoldCryptedPasswordMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctoldCryptedPasswordMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctrememberMeTokenMapping = RKAttributeMapping(fromKeyPath: "rememberMeToken", toKeyPath: "rememberMeToken_")
        AcctrememberMeTokenMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctrememberMeTokenMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctrememberMeTokenExpiresAtMapping = RKAttributeMapping(fromKeyPath: "rememberMeTokenExpiresAt", toKeyPath: "rememberMeTokenExpiresAt_")
        AcctrememberMeTokenExpiresAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctrememberMeTokenExpiresAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctresetPasswordEmailSentAtMapping = RKAttributeMapping(fromKeyPath: "resetPasswordEmailSentAt", toKeyPath: "resetPasswordEmailSentAt_")
        AcctresetPasswordEmailSentAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctresetPasswordEmailSentAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctresetPasswordTokenMapping = RKAttributeMapping(fromKeyPath: "resetPasswordToken", toKeyPath: "resetPasswordToken_")
        AcctresetPasswordTokenMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctresetPasswordTokenMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctsaltMapping = RKAttributeMapping(fromKeyPath: "salt", toKeyPath: "salt_")
        AcctsaltMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctsaltMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let AcctupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        AcctupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctupdatedAtMapping)
        let DivisionMapping = RKObjectMapping(for: ModelsSportsDivision.self);
        DivisionMapping?.addAttributeMappings(from: ["id":"id__" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let DivisionnameMapping = RKAttributeMapping(fromKeyPath: "name", toKeyPath: "name_")
        DivisionnameMapping?.propertyValueClass = NSString.classForCoder() 
        DivisionMapping?.addPropertyMapping(DivisionnameMapping)
        let FacilityMapping = RKObjectMapping(for: ModelsSportsFacility.self);
        FacilityMapping?.addAttributeMappings(from: ["id":"id__" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let FacilitycreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        FacilitycreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilitycreatedAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let FacilitydescriptionMapping = RKAttributeMapping(fromKeyPath: "description", toKeyPath: "description_")
        FacilitydescriptionMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilitydescriptionMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let FacilityfacilityTypeMapping = RKAttributeMapping(fromKeyPath: "facilityType", toKeyPath: "facilityType_")
        FacilityfacilityTypeMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilityfacilityTypeMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let FacilitynameMapping = RKAttributeMapping(fromKeyPath: "name", toKeyPath: "name_")
        FacilitynameMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilitynameMapping)
        FacilityMapping?.addAttributeMappings(from: ["organizationId":"organizationId_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let FacilityupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        FacilityupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilityupdatedAtMapping)
        GameMapping = RKObjectMapping(for: ModelsSportsGame.self);
        GameMapping.addAttributeMappings(from: ["id":"id__" ]);
        GameMapping.addAttributeMappings(from: ["awayBonusPoints":"awayBonusPoints_" ]);
        GameMapping.addAttributeMappings(from: ["awayLockerId":"awayLockerId_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let GameboxTitleMapping = RKAttributeMapping(fromKeyPath: "boxTitle", toKeyPath: "boxTitle_")
        GameboxTitleMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping.addPropertyMapping(GameboxTitleMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let GamecontextMapping = RKAttributeMapping(fromKeyPath: "context", toKeyPath: "context_")
        GamecontextMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping.addPropertyMapping(GamecontextMapping)
        //Dates treated specially to prevent nulls getting typed as NSNull
        let GamecreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        GamecreatedAtMapping?.propertyValueClass = NSDate.classForCoder() 
        GameMapping.addPropertyMapping(GamecreatedAtMapping)
        GameMapping.addAttributeMappings(from: ["gameNumber":"gameNumber_" ]);
        GameMapping.addAttributeMappings(from: ["homeBonusPoints":"homeBonusPoints_" ]);
        GameMapping.addAttributeMappings(from: ["homeLockerId":"homeLockerId_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let GamenameMapping = RKAttributeMapping(fromKeyPath: "name", toKeyPath: "name_")
        GamenameMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping.addPropertyMapping(GamenameMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let GameofficialsMapping = RKAttributeMapping(fromKeyPath: "officials", toKeyPath: "officials_")
        GameofficialsMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping.addPropertyMapping(GameofficialsMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let GamescoringMethodMapping = RKAttributeMapping(fromKeyPath: "scoringMethod", toKeyPath: "scoringMethod_")
        GamescoringMethodMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping.addPropertyMapping(GamescoringMethodMapping)
        //Dates treated specially to prevent nulls getting typed as NSNull
        let GamestartTimeMapping = RKAttributeMapping(fromKeyPath: "startTime", toKeyPath: "startTime_")
        GamestartTimeMapping?.propertyValueClass = NSDate.classForCoder() 
        GameMapping.addPropertyMapping(GamestartTimeMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let GamestatusMapping = RKAttributeMapping(fromKeyPath: "status", toKeyPath: "status_")
        GamestatusMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping.addPropertyMapping(GamestatusMapping)
        //Dates treated specially to prevent nulls getting typed as NSNull
        let GameupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        GameupdatedAtMapping?.propertyValueClass = NSDate.classForCoder() 
        GameMapping.addPropertyMapping(GameupdatedAtMapping)
        //Dates treated specially to prevent nulls getting typed as NSNull
        let GamelocalDateTestMapping = RKAttributeMapping(fromKeyPath: "localDateTest", toKeyPath: "localDateTest_")
        GamelocalDateTestMapping?.propertyValueClass = NSDate.classForCoder() 
        GameMapping.addPropertyMapping(GamelocalDateTestMapping)
        LocationMapping = RKObjectMapping(for: ModelsSportsLocation.self);
        LocationMapping?.addAttributeMappings(from: ["id":"id__" ]);
        LocationMapping?.addAttributeMappings(from: ["organizationId":"organizationId_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let LocationnameMapping = RKAttributeMapping(fromKeyPath: "name", toKeyPath: "name_")
        LocationnameMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationnameMapping)
        //Dates treated specially to prevent nulls getting typed as NSNull
        let LocationcreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        LocationcreatedAtMapping?.propertyValueClass = NSDate.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationcreatedAtMapping)
        //Dates treated specially to prevent nulls getting typed as NSNull
        let LocationupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        LocationupdatedAtMapping?.propertyValueClass = NSDate.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationupdatedAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let LocationstreetMapping = RKAttributeMapping(fromKeyPath: "street", toKeyPath: "street_")
        LocationstreetMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationstreetMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let LocationzipCodeMapping = RKAttributeMapping(fromKeyPath: "zipCode", toKeyPath: "zipCode_")
        LocationzipCodeMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationzipCodeMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let LocationstateMapping = RKAttributeMapping(fromKeyPath: "state", toKeyPath: "state_")
        LocationstateMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationstateMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let LocationcityMapping = RKAttributeMapping(fromKeyPath: "city", toKeyPath: "city_")
        LocationcityMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationcityMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let LocationcountryMapping = RKAttributeMapping(fromKeyPath: "country", toKeyPath: "country_")
        LocationcountryMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationcountryMapping)
        LocationMapping?.addAttributeMappings(from: ["lat":"lat_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let LocationsearchMapping = RKAttributeMapping(fromKeyPath: "search", toKeyPath: "search_")
        LocationsearchMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationsearchMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let LocationphoneNumberMapping = RKAttributeMapping(fromKeyPath: "phoneNumber", toKeyPath: "phoneNumber_")
        LocationphoneNumberMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationphoneNumberMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let LocationtypeMapping = RKAttributeMapping(fromKeyPath: "type", toKeyPath: "type_")
        LocationtypeMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationtypeMapping)
        let MembershipMapping = RKObjectMapping(for: ModelsSportsMembership.self);
        MembershipMapping?.addAttributeMappings(from: ["id":"id__" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipcreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        MembershipcreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipMapping?.addPropertyMapping(MembershipcreatedAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipmembershipFieldsMapping = RKAttributeMapping(fromKeyPath: "membershipFields", toKeyPath: "membershipFields_")
        MembershipmembershipFieldsMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipMapping?.addPropertyMapping(MembershipmembershipFieldsMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipmembershipNumberMapping = RKAttributeMapping(fromKeyPath: "membershipNumber", toKeyPath: "membershipNumber_")
        MembershipmembershipNumberMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipMapping?.addPropertyMapping(MembershipmembershipNumberMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        MembershipupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipMapping?.addPropertyMapping(MembershipupdatedAtMapping)
        let MembershipSubscriptionMapping = RKObjectMapping(for: ModelsSportsMembershipSubscription.self);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["id":"id__" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipSubscriptioncreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        MembershipSubscriptioncreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptioncreatedAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipSubscriptionexpiresOnMapping = RKAttributeMapping(fromKeyPath: "expiresOn", toKeyPath: "expiresOn_")
        MembershipSubscriptionexpiresOnMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionexpiresOnMapping)
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["isActive":"isActive_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["isOfflinePayment":"isOfflinePayment_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["membershipOptionId":"membershipOptionId_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipSubscriptionpaidAtMapping = RKAttributeMapping(fromKeyPath: "paidAt", toKeyPath: "paidAt_")
        MembershipSubscriptionpaidAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionpaidAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipSubscriptionpaidStatusMapping = RKAttributeMapping(fromKeyPath: "paidStatus", toKeyPath: "paidStatus_")
        MembershipSubscriptionpaidStatusMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionpaidStatusMapping)
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["totalOwed":"totalOwed_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["totalPaid":"totalPaid_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["totalRefunds":"totalRefunds_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipSubscriptionupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        MembershipSubscriptionupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionupdatedAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let MembershipSubscriptionwaiverInitialsMapping = RKAttributeMapping(fromKeyPath: "waiverInitials", toKeyPath: "waiverInitials_")
        MembershipSubscriptionwaiverInitialsMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionwaiverInitialsMapping)
        let PeopleMapping = RKObjectMapping(for: ModelsSportsPeople.self);
        PeopleMapping?.addAttributeMappings(from: ["id":"id__" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplealiasMapping = RKAttributeMapping(fromKeyPath: "alias", toKeyPath: "alias_")
        PeoplealiasMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplealiasMapping)
        PeopleMapping?.addAttributeMappings(from: ["allowFacebookPosts":"allowFacebookPosts_" ]);
        PeopleMapping?.addAttributeMappings(from: ["allowGameNotifications":"allowGameNotifications_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeopleavatarContentTypeMapping = RKAttributeMapping(fromKeyPath: "avatarContentType", toKeyPath: "avatarContentType_")
        PeopleavatarContentTypeMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleavatarContentTypeMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeopleavatarFileNameMapping = RKAttributeMapping(fromKeyPath: "avatarFileName", toKeyPath: "avatarFileName_")
        PeopleavatarFileNameMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleavatarFileNameMapping)
        PeopleMapping?.addAttributeMappings(from: ["avatarFileSize":"avatarFileSize_" ]);
        PeopleMapping?.addAttributeMappings(from: ["avatarId":"avatarId_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeopleavatarUpdatedAtMapping = RKAttributeMapping(fromKeyPath: "avatarUpdatedAt", toKeyPath: "avatarUpdatedAt_")
        PeopleavatarUpdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleavatarUpdatedAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplebusinessPhoneMapping = RKAttributeMapping(fromKeyPath: "businessPhone", toKeyPath: "businessPhone_")
        PeoplebusinessPhoneMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplebusinessPhoneMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplecityMapping = RKAttributeMapping(fromKeyPath: "city", toKeyPath: "city_")
        PeoplecityMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplecityMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplecountryMapping = RKAttributeMapping(fromKeyPath: "country", toKeyPath: "country_")
        PeoplecountryMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplecountryMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplecreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        PeoplecreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplecreatedAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeopledateOfBirthMapping = RKAttributeMapping(fromKeyPath: "dateOfBirth", toKeyPath: "dateOfBirth_")
        PeopledateOfBirthMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopledateOfBirthMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let Peopleemail2Mapping = RKAttributeMapping(fromKeyPath: "email2", toKeyPath: "email2_")
        Peopleemail2Mapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(Peopleemail2Mapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplefaxMapping = RKAttributeMapping(fromKeyPath: "fax", toKeyPath: "fax_")
        PeoplefaxMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplefaxMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplefirstNameMapping = RKAttributeMapping(fromKeyPath: "firstName", toKeyPath: "firstName_")
        PeoplefirstNameMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplefirstNameMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplegenderMapping = RKAttributeMapping(fromKeyPath: "gender", toKeyPath: "gender_")
        PeoplegenderMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplegenderMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplehiddenLastNameMapping = RKAttributeMapping(fromKeyPath: "hiddenLastName", toKeyPath: "hiddenLastName_")
        PeoplehiddenLastNameMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplehiddenLastNameMapping)
        PeopleMapping?.addAttributeMappings(from: ["isAdmin":"isAdmin_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplelastNameMapping = RKAttributeMapping(fromKeyPath: "lastName", toKeyPath: "lastName_")
        PeoplelastNameMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplelastNameMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplelatitudeMapping = RKAttributeMapping(fromKeyPath: "latitude", toKeyPath: "latitude_")
        PeoplelatitudeMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplelatitudeMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplelongitudeMapping = RKAttributeMapping(fromKeyPath: "longitude", toKeyPath: "longitude_")
        PeoplelongitudeMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplelongitudeMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplemiddleInitialMapping = RKAttributeMapping(fromKeyPath: "middleInitial", toKeyPath: "middleInitial_")
        PeoplemiddleInitialMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplemiddleInitialMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplemobileMapping = RKAttributeMapping(fromKeyPath: "mobile", toKeyPath: "mobile_")
        PeoplemobileMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplemobileMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplenotesMapping = RKAttributeMapping(fromKeyPath: "notes", toKeyPath: "notes_")
        PeoplenotesMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplenotesMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeopleotherPhoneMapping = RKAttributeMapping(fromKeyPath: "otherPhone", toKeyPath: "otherPhone_")
        PeopleotherPhoneMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleotherPhoneMapping)
        PeopleMapping?.addAttributeMappings(from: ["parentId":"parentId_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplephoneMapping = RKAttributeMapping(fromKeyPath: "phone", toKeyPath: "phone_")
        PeoplephoneMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplephoneMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplestateMapping = RKAttributeMapping(fromKeyPath: "state", toKeyPath: "state_")
        PeoplestateMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplestateMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeopleupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        PeopleupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleupdatedAtMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplewebsiteMapping = RKAttributeMapping(fromKeyPath: "website", toKeyPath: "website_")
        PeoplewebsiteMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplewebsiteMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let PeoplezipMapping = RKAttributeMapping(fromKeyPath: "zip", toKeyPath: "zip_")
        PeoplezipMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplezipMapping)
        let SportsRootMapping = RKObjectMapping(for: ModelsSportsSportsRoot.self);
        SportsRootMapping?.addAttributeMappings(from: ["id":"id__" ]);
        let TeamMapping = RKObjectMapping(for: ModelsSportsTeam.self);
        TeamMapping?.addAttributeMappings(from: ["id":"id__" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let TeamshortNameMapping = RKAttributeMapping(fromKeyPath: "shortName", toKeyPath: "shortName_")
        TeamshortNameMapping?.propertyValueClass = NSString.classForCoder() 
        TeamMapping?.addPropertyMapping(TeamshortNameMapping)
        let TeamScoreMapping = RKObjectMapping(for: ModelsSportsTeamScore.self);
        TeamScoreMapping?.addAttributeMappings(from: ["id":"id__" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["forfeited":"forfeited_" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["goalsScored":"goalsScored_" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["homeField":"homeField_" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["rankPoints":"rankPoints_" ]);
        //Strings treated specially to prevent nulls getting typed as NSNull
        let TeamScoreresultMapping = RKAttributeMapping(fromKeyPath: "result", toKeyPath: "result_")
        TeamScoreresultMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScoreresultMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let TeamScoreseedIdentifierMapping = RKAttributeMapping(fromKeyPath: "seedIdentifier", toKeyPath: "seedIdentifier_")
        TeamScoreseedIdentifierMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScoreseedIdentifierMapping)
        //Strings treated specially to prevent nulls getting typed as NSNull
        let TeamScorewinLossTieMapping = RKAttributeMapping(fromKeyPath: "winLossTie", toKeyPath: "winLossTie_")
        TeamScorewinLossTieMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScorewinLossTieMapping)
        FacilityMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "location", toKeyPath:"location_", with: LocationMapping));
        GameMapping.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "division", toKeyPath:"division_", with: DivisionMapping));
        GameMapping.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "facility", toKeyPath:"facility_", with: FacilityMapping));
        GameMapping.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "teamScore", toKeyPath:"teamScore_", with: TeamScoreMapping));
        MembershipMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "membershipSubscription", toKeyPath:"membershipSubscription_", with: MembershipSubscriptionMapping));
        PeopleMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "acct", toKeyPath:"acct_", with: AcctMapping));
        PeopleMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "division", toKeyPath:"division_", with: DivisionMapping));
        PeopleMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "membership", toKeyPath:"membership_", with: MembershipMapping));
        PeopleMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "team", toKeyPath:"team_", with: TeamMapping));
        SportsRootMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "game", toKeyPath:"game_", with: GameMapping));
        SportsRootMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "people", toKeyPath:"people_", with: PeopleMapping));
        TeamScoreMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "team", toKeyPath:"team_", with: TeamMapping));

        //end generated

        return SportsRootMapping;
    }
}
