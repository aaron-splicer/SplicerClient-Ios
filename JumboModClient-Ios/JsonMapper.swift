//
//  JsonMapper.swift
//  SplicerClient-Swift
//
//  Created by Aaron Evans on 4/16/20.
//  Copyright © 2020 Aaron Evans. All rights reserved.
//

//  Converted to Swift 5.1 by Swiftify v5.1.31847 - https://swiftify.com/

import Foundation
import RestKit

class JsonMapper {
    func mapComplexTypes() -> RKObjectMapping? {
        let GameMapping = RKObjectMapping(for: ModelsSportsGame.self)
        GameMapping?.addAttributeMappings(from: [
            "id": "id__"
            ])
        let SportsRootMapping = RKObjectMapping(for: ModelsSportsSportsRoot.self)
        SportsRootMapping?.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "game", toKeyPath: "game_", with: GameMapping))
        return SportsRootMapping
    }
}
