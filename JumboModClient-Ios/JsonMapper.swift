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
        AcctMapping?.addAttributeMappings(from: ["id":"id__" ]);
        AcctMapping?.addAttributeMappings(from: ["activationState":"activationState_" ]);
        AcctMapping?.addAttributeMappings(from: ["activationToken":"activationToken_" ]);
        AcctMapping?.addAttributeMappings(from: ["activationTokenExpiresAt":"activationTokenExpiresAt_" ]);
        AcctMapping?.addAttributeMappings(from: ["createdAt":"createdAt_" ]);
        AcctMapping?.addAttributeMappings(from: ["crossDomainCode":"crossDomainCode_" ]);
        AcctMapping?.addAttributeMappings(from: ["cryptedPassword":"cryptedPassword_" ]);
        AcctMapping?.addAttributeMappings(from: ["email":"email_" ]);
        AcctMapping?.addAttributeMappings(from: ["loggedin":"loggedin_" ]);
        AcctMapping?.addAttributeMappings(from: ["oldCryptedPassword":"oldCryptedPassword_" ]);
        AcctMapping?.addAttributeMappings(from: ["rememberMeToken":"rememberMeToken_" ]);
        AcctMapping?.addAttributeMappings(from: ["rememberMeTokenExpiresAt":"rememberMeTokenExpiresAt_" ]);
        AcctMapping?.addAttributeMappings(from: ["resetPasswordEmailSentAt":"resetPasswordEmailSentAt_" ]);
        AcctMapping?.addAttributeMappings(from: ["resetPasswordToken":"resetPasswordToken_" ]);
        AcctMapping?.addAttributeMappings(from: ["salt":"salt_" ]);
        AcctMapping?.addAttributeMappings(from: ["updatedAt":"updatedAt_" ]);
        let DivisionMapping = RKObjectMapping(for: ModelsSportsDivision.self);
        DivisionMapping?.addAttributeMappings(from: ["id":"id__" ]);
        DivisionMapping?.addAttributeMappings(from: ["name":"name_" ]);
        let FacilityMapping = RKObjectMapping(for: ModelsSportsFacility.self);
        FacilityMapping?.addAttributeMappings(from: ["id":"id__" ]);
        FacilityMapping?.addAttributeMappings(from: ["createdAt":"createdAt_" ]);
        FacilityMapping?.addAttributeMappings(from: ["description":"description_" ]);
        FacilityMapping?.addAttributeMappings(from: ["facilityType":"facilityType_" ]);
        FacilityMapping?.addAttributeMappings(from: ["name":"name_" ]);
        FacilityMapping?.addAttributeMappings(from: ["organizationId":"organizationId_" ]);
        FacilityMapping?.addAttributeMappings(from: ["updatedAt":"updatedAt_" ]);
        let GameMapping = RKObjectMapping(for: ModelsSportsGame.self);
        GameMapping?.addAttributeMappings(from: ["id":"id__" ]);
        GameMapping?.addAttributeMappings(from: ["awayBonusPoints":"awayBonusPoints_" ]);
        GameMapping?.addAttributeMappings(from: ["awayLockerId":"awayLockerId_" ]);
        GameMapping?.addAttributeMappings(from: ["boxTitle":"boxTitle_" ]);
        GameMapping?.addAttributeMappings(from: ["context":"context_" ]);
        GameMapping?.addAttributeMappings(from: ["createdAt":"createdAt_" ]);
        GameMapping?.addAttributeMappings(from: ["gameNumber":"gameNumber_" ]);
        GameMapping?.addAttributeMappings(from: ["homeBonusPoints":"homeBonusPoints_" ]);
        GameMapping?.addAttributeMappings(from: ["homeLockerId":"homeLockerId_" ]);
        GameMapping?.addAttributeMappings(from: ["name":"name_" ]);
        GameMapping?.addAttributeMappings(from: ["officials":"officials_" ]);
        GameMapping?.addAttributeMappings(from: ["scoringMethod":"scoringMethod_" ]);
        GameMapping?.addAttributeMappings(from: ["startTime":"startTime_" ]);
        GameMapping?.addAttributeMappings(from: ["status":"status_" ]);
        GameMapping?.addAttributeMappings(from: ["updatedAt":"updatedAt_" ]);
        let LocationMapping = RKObjectMapping(for: ModelsSportsLocation.self);
        LocationMapping?.addAttributeMappings(from: ["id":"id__" ]);
        LocationMapping?.addAttributeMappings(from: ["organizationId":"organizationId_" ]);
        LocationMapping?.addAttributeMappings(from: ["name":"name_" ]);
        LocationMapping?.addAttributeMappings(from: ["createdAt":"createdAt_" ]);
        LocationMapping?.addAttributeMappings(from: ["updatedAt":"updatedAt_" ]);
        LocationMapping?.addAttributeMappings(from: ["street":"street_" ]);
        LocationMapping?.addAttributeMappings(from: ["zipCode":"zipCode_" ]);
        LocationMapping?.addAttributeMappings(from: ["state":"state_" ]);
        LocationMapping?.addAttributeMappings(from: ["city":"city_" ]);
        LocationMapping?.addAttributeMappings(from: ["country":"country_" ]);
        LocationMapping?.addAttributeMappings(from: ["lat":"lat_" ]);
        LocationMapping?.addAttributeMappings(from: ["search":"search_" ]);
        LocationMapping?.addAttributeMappings(from: ["phoneNumber":"phoneNumber_" ]);
        LocationMapping?.addAttributeMappings(from: ["type":"type_" ]);
        let MembershipMapping = RKObjectMapping(for: ModelsSportsMembership.self);
        MembershipMapping?.addAttributeMappings(from: ["id":"id__" ]);
        MembershipMapping?.addAttributeMappings(from: ["createdAt":"createdAt_" ]);
        MembershipMapping?.addAttributeMappings(from: ["membershipFields":"membershipFields_" ]);
        MembershipMapping?.addAttributeMappings(from: ["membershipNumber":"membershipNumber_" ]);
        MembershipMapping?.addAttributeMappings(from: ["updatedAt":"updatedAt_" ]);
        let MembershipSubscriptionMapping = RKObjectMapping(for: ModelsSportsMembershipSubscription.self);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["id":"id__" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["createdAt":"createdAt_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["expiresOn":"expiresOn_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["isActive":"isActive_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["isOfflinePayment":"isOfflinePayment_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["membershipOptionId":"membershipOptionId_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["paidAt":"paidAt_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["paidStatus":"paidStatus_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["totalOwed":"totalOwed_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["totalPaid":"totalPaid_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["totalRefunds":"totalRefunds_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["updatedAt":"updatedAt_" ]);
        MembershipSubscriptionMapping?.addAttributeMappings(from: ["waiverInitials":"waiverInitials_" ]);
        let PeopleMapping = RKObjectMapping(for: ModelsSportsPeople.self);
        PeopleMapping?.addAttributeMappings(from: ["id":"id__" ]);
        PeopleMapping?.addAttributeMappings(from: ["alias":"alias_" ]);
        PeopleMapping?.addAttributeMappings(from: ["allowFacebookPosts":"allowFacebookPosts_" ]);
        PeopleMapping?.addAttributeMappings(from: ["allowGameNotifications":"allowGameNotifications_" ]);
        PeopleMapping?.addAttributeMappings(from: ["avatarContentType":"avatarContentType_" ]);
        PeopleMapping?.addAttributeMappings(from: ["avatarFileName":"avatarFileName_" ]);
        PeopleMapping?.addAttributeMappings(from: ["avatarFileSize":"avatarFileSize_" ]);
        PeopleMapping?.addAttributeMappings(from: ["avatarId":"avatarId_" ]);
        PeopleMapping?.addAttributeMappings(from: ["avatarUpdatedAt":"avatarUpdatedAt_" ]);
        PeopleMapping?.addAttributeMappings(from: ["businessPhone":"businessPhone_" ]);
        PeopleMapping?.addAttributeMappings(from: ["city":"city_" ]);
        PeopleMapping?.addAttributeMappings(from: ["country":"country_" ]);
        PeopleMapping?.addAttributeMappings(from: ["createdAt":"createdAt_" ]);
        PeopleMapping?.addAttributeMappings(from: ["dateOfBirth":"dateOfBirth_" ]);
        PeopleMapping?.addAttributeMappings(from: ["email2":"email2_" ]);
        PeopleMapping?.addAttributeMappings(from: ["fax":"fax_" ]);
        PeopleMapping?.addAttributeMappings(from: ["firstName":"firstName_" ]);
        PeopleMapping?.addAttributeMappings(from: ["gender":"gender_" ]);
        PeopleMapping?.addAttributeMappings(from: ["hiddenLastName":"hiddenLastName_" ]);
        PeopleMapping?.addAttributeMappings(from: ["isAdmin":"isAdmin_" ]);
        PeopleMapping?.addAttributeMappings(from: ["lastName":"lastName_" ]);
        PeopleMapping?.addAttributeMappings(from: ["latitude":"latitude_" ]);
        PeopleMapping?.addAttributeMappings(from: ["longitude":"longitude_" ]);
        PeopleMapping?.addAttributeMappings(from: ["middleInitial":"middleInitial_" ]);
        PeopleMapping?.addAttributeMappings(from: ["mobile":"mobile_" ]);
        PeopleMapping?.addAttributeMappings(from: ["notes":"notes_" ]);
        PeopleMapping?.addAttributeMappings(from: ["otherPhone":"otherPhone_" ]);
        PeopleMapping?.addAttributeMappings(from: ["parentId":"parentId_" ]);
        PeopleMapping?.addAttributeMappings(from: ["phone":"phone_" ]);
        PeopleMapping?.addAttributeMappings(from: ["state":"state_" ]);
        PeopleMapping?.addAttributeMappings(from: ["updatedAt":"updatedAt_" ]);
        PeopleMapping?.addAttributeMappings(from: ["website":"website_" ]);
        PeopleMapping?.addAttributeMappings(from: ["zip":"zip_" ]);
        let SportsRootMapping = RKObjectMapping(for: ModelsSportsSportsRoot.self);
        SportsRootMapping?.addAttributeMappings(from: ["id":"id__" ]);
        let TeamMapping = RKObjectMapping(for: ModelsSportsTeam.self);
        TeamMapping?.addAttributeMappings(from: ["id":"id__" ]);
        TeamMapping?.addAttributeMappings(from: ["shortName":"shortName_" ]);
        let TeamScoreMapping = RKObjectMapping(for: ModelsSportsTeamScore.self);
        TeamScoreMapping?.addAttributeMappings(from: ["id":"id__" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["forfeited":"forfeited_" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["goalsScored":"goalsScored_" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["homeField":"homeField_" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["rankPoints":"rankPoints_" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["result":"result_" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["seedIdentifier":"seedIdentifier_" ]);
        TeamScoreMapping?.addAttributeMappings(from: ["winLossTie":"winLossTie_" ]);
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
