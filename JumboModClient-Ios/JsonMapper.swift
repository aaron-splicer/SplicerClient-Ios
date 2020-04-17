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
    func mapComplexTypes() -> RKObjectMapping? {
        //generated
        let AcctMapping = RKObjectMapping(for: ModelsSportsAcct.self);

        let AcctidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        AcctidMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctidMapping)

        let AcctactivationStateMapping = RKAttributeMapping(fromKeyPath: "activationState", toKeyPath: "activationState_")
        AcctactivationStateMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctactivationStateMapping)

        let AcctactivationTokenMapping = RKAttributeMapping(fromKeyPath: "activationToken", toKeyPath: "activationToken_")
        AcctactivationTokenMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctactivationTokenMapping)

        let AcctactivationTokenExpiresAtMapping = RKAttributeMapping(fromKeyPath: "activationTokenExpiresAt", toKeyPath: "activationTokenExpiresAt_")
        AcctactivationTokenExpiresAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctactivationTokenExpiresAtMapping)

        let AcctcreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        AcctcreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctcreatedAtMapping)

        let AcctcrossDomainCodeMapping = RKAttributeMapping(fromKeyPath: "crossDomainCode", toKeyPath: "crossDomainCode_")
        AcctcrossDomainCodeMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctcrossDomainCodeMapping)

        let AcctcryptedPasswordMapping = RKAttributeMapping(fromKeyPath: "cryptedPassword", toKeyPath: "cryptedPassword_")
        AcctcryptedPasswordMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctcryptedPasswordMapping)

        let AcctemailMapping = RKAttributeMapping(fromKeyPath: "email", toKeyPath: "email_")
        AcctemailMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctemailMapping)

        let AcctloggedinMapping = RKAttributeMapping(fromKeyPath: "loggedin", toKeyPath: "loggedin_")
        AcctloggedinMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctloggedinMapping)

        let AcctoldCryptedPasswordMapping = RKAttributeMapping(fromKeyPath: "oldCryptedPassword", toKeyPath: "oldCryptedPassword_")
        AcctoldCryptedPasswordMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctoldCryptedPasswordMapping)

        let AcctrememberMeTokenMapping = RKAttributeMapping(fromKeyPath: "rememberMeToken", toKeyPath: "rememberMeToken_")
        AcctrememberMeTokenMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctrememberMeTokenMapping)

        let AcctrememberMeTokenExpiresAtMapping = RKAttributeMapping(fromKeyPath: "rememberMeTokenExpiresAt", toKeyPath: "rememberMeTokenExpiresAt_")
        AcctrememberMeTokenExpiresAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctrememberMeTokenExpiresAtMapping)

        let AcctresetPasswordEmailSentAtMapping = RKAttributeMapping(fromKeyPath: "resetPasswordEmailSentAt", toKeyPath: "resetPasswordEmailSentAt_")
        AcctresetPasswordEmailSentAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctresetPasswordEmailSentAtMapping)

        let AcctresetPasswordTokenMapping = RKAttributeMapping(fromKeyPath: "resetPasswordToken", toKeyPath: "resetPasswordToken_")
        AcctresetPasswordTokenMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctresetPasswordTokenMapping)

        let AcctsaltMapping = RKAttributeMapping(fromKeyPath: "salt", toKeyPath: "salt_")
        AcctsaltMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctsaltMapping)

        let AcctupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        AcctupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        AcctMapping?.addPropertyMapping(AcctupdatedAtMapping)
        let DivisionMapping = RKObjectMapping(for: ModelsSportsDivision.self);

        let DivisionidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        DivisionidMapping?.propertyValueClass = NSString.classForCoder() 
        DivisionMapping?.addPropertyMapping(DivisionidMapping)

        let DivisionnameMapping = RKAttributeMapping(fromKeyPath: "name", toKeyPath: "name_")
        DivisionnameMapping?.propertyValueClass = NSString.classForCoder() 
        DivisionMapping?.addPropertyMapping(DivisionnameMapping)
        let FacilityMapping = RKObjectMapping(for: ModelsSportsFacility.self);

        let FacilityidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        FacilityidMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilityidMapping)

        let FacilitycreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        FacilitycreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilitycreatedAtMapping)

        let FacilitydescriptionMapping = RKAttributeMapping(fromKeyPath: "description", toKeyPath: "description_")
        FacilitydescriptionMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilitydescriptionMapping)

        let FacilityfacilityTypeMapping = RKAttributeMapping(fromKeyPath: "facilityType", toKeyPath: "facilityType_")
        FacilityfacilityTypeMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilityfacilityTypeMapping)

        let FacilitynameMapping = RKAttributeMapping(fromKeyPath: "name", toKeyPath: "name_")
        FacilitynameMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilitynameMapping)

        let FacilityorganizationIdMapping = RKAttributeMapping(fromKeyPath: "organizationId", toKeyPath: "organizationId_")
        FacilityorganizationIdMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilityorganizationIdMapping)

        let FacilityupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        FacilityupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        FacilityMapping?.addPropertyMapping(FacilityupdatedAtMapping)
        let GameMapping = RKObjectMapping(for: ModelsSportsGame.self);

        let GameidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        GameidMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GameidMapping)

        let GameawayBonusPointsMapping = RKAttributeMapping(fromKeyPath: "awayBonusPoints", toKeyPath: "awayBonusPoints_")
        GameawayBonusPointsMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GameawayBonusPointsMapping)

        let GameawayLockerIdMapping = RKAttributeMapping(fromKeyPath: "awayLockerId", toKeyPath: "awayLockerId_")
        GameawayLockerIdMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GameawayLockerIdMapping)

        let GameboxTitleMapping = RKAttributeMapping(fromKeyPath: "boxTitle", toKeyPath: "boxTitle_")
        GameboxTitleMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GameboxTitleMapping)

        let GamecontextMapping = RKAttributeMapping(fromKeyPath: "context", toKeyPath: "context_")
        GamecontextMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GamecontextMapping)

        let GamecreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        GamecreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GamecreatedAtMapping)

        let GamegameNumberMapping = RKAttributeMapping(fromKeyPath: "gameNumber", toKeyPath: "gameNumber_")
        GamegameNumberMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GamegameNumberMapping)

        let GamehomeBonusPointsMapping = RKAttributeMapping(fromKeyPath: "homeBonusPoints", toKeyPath: "homeBonusPoints_")
        GamehomeBonusPointsMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GamehomeBonusPointsMapping)

        let GamehomeLockerIdMapping = RKAttributeMapping(fromKeyPath: "homeLockerId", toKeyPath: "homeLockerId_")
        GamehomeLockerIdMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GamehomeLockerIdMapping)

        let GamenameMapping = RKAttributeMapping(fromKeyPath: "name", toKeyPath: "name_")
        GamenameMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GamenameMapping)

        let GameofficialsMapping = RKAttributeMapping(fromKeyPath: "officials", toKeyPath: "officials_")
        GameofficialsMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GameofficialsMapping)

        let GamescoringMethodMapping = RKAttributeMapping(fromKeyPath: "scoringMethod", toKeyPath: "scoringMethod_")
        GamescoringMethodMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GamescoringMethodMapping)

        let GamestartTimeMapping = RKAttributeMapping(fromKeyPath: "startTime", toKeyPath: "startTime_")
        GamestartTimeMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GamestartTimeMapping)

        let GamestatusMapping = RKAttributeMapping(fromKeyPath: "status", toKeyPath: "status_")
        GamestatusMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GamestatusMapping)

        let GameupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        GameupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        GameMapping?.addPropertyMapping(GameupdatedAtMapping)
        let LocationMapping = RKObjectMapping(for: ModelsSportsLocation.self);

        let LocationidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        LocationidMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationidMapping)

        let LocationorganizationIdMapping = RKAttributeMapping(fromKeyPath: "organizationId", toKeyPath: "organizationId_")
        LocationorganizationIdMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationorganizationIdMapping)

        let LocationnameMapping = RKAttributeMapping(fromKeyPath: "name", toKeyPath: "name_")
        LocationnameMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationnameMapping)

        let LocationcreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        LocationcreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationcreatedAtMapping)

        let LocationupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        LocationupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationupdatedAtMapping)

        let LocationstreetMapping = RKAttributeMapping(fromKeyPath: "street", toKeyPath: "street_")
        LocationstreetMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationstreetMapping)

        let LocationzipCodeMapping = RKAttributeMapping(fromKeyPath: "zipCode", toKeyPath: "zipCode_")
        LocationzipCodeMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationzipCodeMapping)

        let LocationstateMapping = RKAttributeMapping(fromKeyPath: "state", toKeyPath: "state_")
        LocationstateMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationstateMapping)

        let LocationcityMapping = RKAttributeMapping(fromKeyPath: "city", toKeyPath: "city_")
        LocationcityMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationcityMapping)

        let LocationcountryMapping = RKAttributeMapping(fromKeyPath: "country", toKeyPath: "country_")
        LocationcountryMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationcountryMapping)

        let LocationlatMapping = RKAttributeMapping(fromKeyPath: "lat", toKeyPath: "lat_")
        LocationlatMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationlatMapping)

        let LocationsearchMapping = RKAttributeMapping(fromKeyPath: "search", toKeyPath: "search_")
        LocationsearchMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationsearchMapping)

        let LocationphoneNumberMapping = RKAttributeMapping(fromKeyPath: "phoneNumber", toKeyPath: "phoneNumber_")
        LocationphoneNumberMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationphoneNumberMapping)

        let LocationtypeMapping = RKAttributeMapping(fromKeyPath: "type", toKeyPath: "type_")
        LocationtypeMapping?.propertyValueClass = NSString.classForCoder() 
        LocationMapping?.addPropertyMapping(LocationtypeMapping)
        let MembershipMapping = RKObjectMapping(for: ModelsSportsMembership.self);

        let MembershipidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        MembershipidMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipMapping?.addPropertyMapping(MembershipidMapping)

        let MembershipcreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        MembershipcreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipMapping?.addPropertyMapping(MembershipcreatedAtMapping)

        let MembershipmembershipFieldsMapping = RKAttributeMapping(fromKeyPath: "membershipFields", toKeyPath: "membershipFields_")
        MembershipmembershipFieldsMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipMapping?.addPropertyMapping(MembershipmembershipFieldsMapping)

        let MembershipmembershipNumberMapping = RKAttributeMapping(fromKeyPath: "membershipNumber", toKeyPath: "membershipNumber_")
        MembershipmembershipNumberMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipMapping?.addPropertyMapping(MembershipmembershipNumberMapping)

        let MembershipupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        MembershipupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipMapping?.addPropertyMapping(MembershipupdatedAtMapping)
        let MembershipSubscriptionMapping = RKObjectMapping(for: ModelsSportsMembershipSubscription.self);

        let MembershipSubscriptionidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        MembershipSubscriptionidMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionidMapping)

        let MembershipSubscriptioncreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        MembershipSubscriptioncreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptioncreatedAtMapping)

        let MembershipSubscriptionexpiresOnMapping = RKAttributeMapping(fromKeyPath: "expiresOn", toKeyPath: "expiresOn_")
        MembershipSubscriptionexpiresOnMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionexpiresOnMapping)

        let MembershipSubscriptionisActiveMapping = RKAttributeMapping(fromKeyPath: "isActive", toKeyPath: "isActive_")
        MembershipSubscriptionisActiveMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionisActiveMapping)

        let MembershipSubscriptionisOfflinePaymentMapping = RKAttributeMapping(fromKeyPath: "isOfflinePayment", toKeyPath: "isOfflinePayment_")
        MembershipSubscriptionisOfflinePaymentMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionisOfflinePaymentMapping)

        let MembershipSubscriptionmembershipOptionIdMapping = RKAttributeMapping(fromKeyPath: "membershipOptionId", toKeyPath: "membershipOptionId_")
        MembershipSubscriptionmembershipOptionIdMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionmembershipOptionIdMapping)

        let MembershipSubscriptionpaidAtMapping = RKAttributeMapping(fromKeyPath: "paidAt", toKeyPath: "paidAt_")
        MembershipSubscriptionpaidAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionpaidAtMapping)

        let MembershipSubscriptionpaidStatusMapping = RKAttributeMapping(fromKeyPath: "paidStatus", toKeyPath: "paidStatus_")
        MembershipSubscriptionpaidStatusMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionpaidStatusMapping)

        let MembershipSubscriptiontotalOwedMapping = RKAttributeMapping(fromKeyPath: "totalOwed", toKeyPath: "totalOwed_")
        MembershipSubscriptiontotalOwedMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptiontotalOwedMapping)

        let MembershipSubscriptiontotalPaidMapping = RKAttributeMapping(fromKeyPath: "totalPaid", toKeyPath: "totalPaid_")
        MembershipSubscriptiontotalPaidMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptiontotalPaidMapping)

        let MembershipSubscriptiontotalRefundsMapping = RKAttributeMapping(fromKeyPath: "totalRefunds", toKeyPath: "totalRefunds_")
        MembershipSubscriptiontotalRefundsMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptiontotalRefundsMapping)

        let MembershipSubscriptionupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        MembershipSubscriptionupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionupdatedAtMapping)

        let MembershipSubscriptionwaiverInitialsMapping = RKAttributeMapping(fromKeyPath: "waiverInitials", toKeyPath: "waiverInitials_")
        MembershipSubscriptionwaiverInitialsMapping?.propertyValueClass = NSString.classForCoder() 
        MembershipSubscriptionMapping?.addPropertyMapping(MembershipSubscriptionwaiverInitialsMapping)
        let PeopleMapping = RKObjectMapping(for: ModelsSportsPeople.self);

        let PeopleidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        PeopleidMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleidMapping)

        let PeoplealiasMapping = RKAttributeMapping(fromKeyPath: "alias", toKeyPath: "alias_")
        PeoplealiasMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplealiasMapping)

        let PeopleallowFacebookPostsMapping = RKAttributeMapping(fromKeyPath: "allowFacebookPosts", toKeyPath: "allowFacebookPosts_")
        PeopleallowFacebookPostsMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleallowFacebookPostsMapping)

        let PeopleallowGameNotificationsMapping = RKAttributeMapping(fromKeyPath: "allowGameNotifications", toKeyPath: "allowGameNotifications_")
        PeopleallowGameNotificationsMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleallowGameNotificationsMapping)

        let PeopleavatarContentTypeMapping = RKAttributeMapping(fromKeyPath: "avatarContentType", toKeyPath: "avatarContentType_")
        PeopleavatarContentTypeMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleavatarContentTypeMapping)

        let PeopleavatarFileNameMapping = RKAttributeMapping(fromKeyPath: "avatarFileName", toKeyPath: "avatarFileName_")
        PeopleavatarFileNameMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleavatarFileNameMapping)

        let PeopleavatarFileSizeMapping = RKAttributeMapping(fromKeyPath: "avatarFileSize", toKeyPath: "avatarFileSize_")
        PeopleavatarFileSizeMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleavatarFileSizeMapping)

        let PeopleavatarIdMapping = RKAttributeMapping(fromKeyPath: "avatarId", toKeyPath: "avatarId_")
        PeopleavatarIdMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleavatarIdMapping)

        let PeopleavatarUpdatedAtMapping = RKAttributeMapping(fromKeyPath: "avatarUpdatedAt", toKeyPath: "avatarUpdatedAt_")
        PeopleavatarUpdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleavatarUpdatedAtMapping)

        let PeoplebusinessPhoneMapping = RKAttributeMapping(fromKeyPath: "businessPhone", toKeyPath: "businessPhone_")
        PeoplebusinessPhoneMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplebusinessPhoneMapping)

        let PeoplecityMapping = RKAttributeMapping(fromKeyPath: "city", toKeyPath: "city_")
        PeoplecityMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplecityMapping)

        let PeoplecountryMapping = RKAttributeMapping(fromKeyPath: "country", toKeyPath: "country_")
        PeoplecountryMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplecountryMapping)

        let PeoplecreatedAtMapping = RKAttributeMapping(fromKeyPath: "createdAt", toKeyPath: "createdAt_")
        PeoplecreatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplecreatedAtMapping)

        let PeopledateOfBirthMapping = RKAttributeMapping(fromKeyPath: "dateOfBirth", toKeyPath: "dateOfBirth_")
        PeopledateOfBirthMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopledateOfBirthMapping)

        let Peopleemail2Mapping = RKAttributeMapping(fromKeyPath: "email2", toKeyPath: "email2_")
        Peopleemail2Mapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(Peopleemail2Mapping)

        let PeoplefaxMapping = RKAttributeMapping(fromKeyPath: "fax", toKeyPath: "fax_")
        PeoplefaxMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplefaxMapping)

        let PeoplefirstNameMapping = RKAttributeMapping(fromKeyPath: "firstName", toKeyPath: "firstName_")
        PeoplefirstNameMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplefirstNameMapping)

        let PeoplegenderMapping = RKAttributeMapping(fromKeyPath: "gender", toKeyPath: "gender_")
        PeoplegenderMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplegenderMapping)

        let PeoplehiddenLastNameMapping = RKAttributeMapping(fromKeyPath: "hiddenLastName", toKeyPath: "hiddenLastName_")
        PeoplehiddenLastNameMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplehiddenLastNameMapping)

        let PeopleisAdminMapping = RKAttributeMapping(fromKeyPath: "isAdmin", toKeyPath: "isAdmin_")
        PeopleisAdminMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleisAdminMapping)

        let PeoplelastNameMapping = RKAttributeMapping(fromKeyPath: "lastName", toKeyPath: "lastName_")
        PeoplelastNameMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplelastNameMapping)

        let PeoplelatitudeMapping = RKAttributeMapping(fromKeyPath: "latitude", toKeyPath: "latitude_")
        PeoplelatitudeMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplelatitudeMapping)

        let PeoplelongitudeMapping = RKAttributeMapping(fromKeyPath: "longitude", toKeyPath: "longitude_")
        PeoplelongitudeMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplelongitudeMapping)

        let PeoplemiddleInitialMapping = RKAttributeMapping(fromKeyPath: "middleInitial", toKeyPath: "middleInitial_")
        PeoplemiddleInitialMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplemiddleInitialMapping)

        let PeoplemobileMapping = RKAttributeMapping(fromKeyPath: "mobile", toKeyPath: "mobile_")
        PeoplemobileMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplemobileMapping)

        let PeoplenotesMapping = RKAttributeMapping(fromKeyPath: "notes", toKeyPath: "notes_")
        PeoplenotesMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplenotesMapping)

        let PeopleotherPhoneMapping = RKAttributeMapping(fromKeyPath: "otherPhone", toKeyPath: "otherPhone_")
        PeopleotherPhoneMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleotherPhoneMapping)

        let PeopleparentIdMapping = RKAttributeMapping(fromKeyPath: "parentId", toKeyPath: "parentId_")
        PeopleparentIdMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleparentIdMapping)

        let PeoplephoneMapping = RKAttributeMapping(fromKeyPath: "phone", toKeyPath: "phone_")
        PeoplephoneMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplephoneMapping)

        let PeoplestateMapping = RKAttributeMapping(fromKeyPath: "state", toKeyPath: "state_")
        PeoplestateMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplestateMapping)

        let PeopleupdatedAtMapping = RKAttributeMapping(fromKeyPath: "updatedAt", toKeyPath: "updatedAt_")
        PeopleupdatedAtMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeopleupdatedAtMapping)

        let PeoplewebsiteMapping = RKAttributeMapping(fromKeyPath: "website", toKeyPath: "website_")
        PeoplewebsiteMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplewebsiteMapping)

        let PeoplezipMapping = RKAttributeMapping(fromKeyPath: "zip", toKeyPath: "zip_")
        PeoplezipMapping?.propertyValueClass = NSString.classForCoder() 
        PeopleMapping?.addPropertyMapping(PeoplezipMapping)
        let SportsRootMapping = RKObjectMapping(for: ModelsSportsSportsRoot.self);

        let SportsRootidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        SportsRootidMapping?.propertyValueClass = NSString.classForCoder() 
        SportsRootMapping?.addPropertyMapping(SportsRootidMapping)
        let TeamMapping = RKObjectMapping(for: ModelsSportsTeam.self);

        let TeamidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        TeamidMapping?.propertyValueClass = NSString.classForCoder() 
        TeamMapping?.addPropertyMapping(TeamidMapping)

        let TeamshortNameMapping = RKAttributeMapping(fromKeyPath: "shortName", toKeyPath: "shortName_")
        TeamshortNameMapping?.propertyValueClass = NSString.classForCoder() 
        TeamMapping?.addPropertyMapping(TeamshortNameMapping)
        let TeamScoreMapping = RKObjectMapping(for: ModelsSportsTeamScore.self);

        let TeamScoreidMapping = RKAttributeMapping(fromKeyPath: "id", toKeyPath: "id__")
        TeamScoreidMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScoreidMapping)

        let TeamScoreforfeitedMapping = RKAttributeMapping(fromKeyPath: "forfeited", toKeyPath: "forfeited_")
        TeamScoreforfeitedMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScoreforfeitedMapping)

        let TeamScoregoalsScoredMapping = RKAttributeMapping(fromKeyPath: "goalsScored", toKeyPath: "goalsScored_")
        TeamScoregoalsScoredMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScoregoalsScoredMapping)

        let TeamScorehomeFieldMapping = RKAttributeMapping(fromKeyPath: "homeField", toKeyPath: "homeField_")
        TeamScorehomeFieldMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScorehomeFieldMapping)

        let TeamScorerankPointsMapping = RKAttributeMapping(fromKeyPath: "rankPoints", toKeyPath: "rankPoints_")
        TeamScorerankPointsMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScorerankPointsMapping)

        let TeamScoreresultMapping = RKAttributeMapping(fromKeyPath: "result", toKeyPath: "result_")
        TeamScoreresultMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScoreresultMapping)

        let TeamScoreseedIdentifierMapping = RKAttributeMapping(fromKeyPath: "seedIdentifier", toKeyPath: "seedIdentifier_")
        TeamScoreseedIdentifierMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScoreseedIdentifierMapping)

        let TeamScorewinLossTieMapping = RKAttributeMapping(fromKeyPath: "winLossTie", toKeyPath: "winLossTie_")
        TeamScorewinLossTieMapping?.propertyValueClass = NSString.classForCoder() 
        TeamScoreMapping?.addPropertyMapping(TeamScorewinLossTieMapping)
        FacilityMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "location", toKeyPath:"location_", with: LocationMapping));
        GameMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "division", toKeyPath:"division_", with: DivisionMapping));
        GameMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "facility", toKeyPath:"facility_", with: FacilityMapping));
        GameMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "teamScore", toKeyPath:"teamScore_", with: TeamScoreMapping));
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
