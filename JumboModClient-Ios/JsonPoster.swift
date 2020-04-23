//
//  JsonPoster.swift
//  SplicerClient-Swift
//
//  Created by Aaron Evans on 4/22/20.
//  Copyright © 2020 Aaron Evans. All rights reserved.
//

import Foundation
import RestKit


class JsonPoster : JsonFetcher {
    //FIME: pass in generic class
    func setup(_ baseUrl: String?, path: String?, clazz: ModelsSportsGame) {
        super.setup(baseUrl, path: path);
        objectManager = RKObjectManager(httpClient: client)
        let mapping = GameMapping.inverseMappingWithPropertyMappings(passingTest: {$0?.sourceKeyPath == "game"})
            //.inverseMappingWithPropertyMappings(passingTest: //);
        let requestDescriptor = RKRequestDescriptor(mapping: mapping, objectClass: ModelsSportsGame.self, rootKeyPath: "", method: RKRequestMethod.POST)
        //resDescriptor = RKResponseDescriptor(mapping: venueMapping, method: RKRequestMethod.POST, pathPattern: path, keyPath: nil, statusCodes: statusCodes)
        objectManager.addRequestDescriptor(requestDescriptor)
    }
    func postObject(path: String?)
    {
        let params = ["key1": "value1", "key2": "value2"]
        objectManager.post(params, path: path ,parameters: nil,
                           success:{ operation, mappingResult in
                            NSLog("success")
                            
                            //defaults.setBool(true, forKey: "WearDimensionsSynced")
                            
        },
                           failure:{ operation, error in
                            NSLog("Error loading metric list': \(error!.localizedDescription)")
                            //return nil
        }
        );
    }
}
