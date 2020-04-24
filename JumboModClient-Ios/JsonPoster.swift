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
    func setup(_ baseUrl: String?, path: String?, clazz: ModelsSportsLocation) {
        //super.setup(baseUrl, path: path);
        baseURL = URL(string: baseUrl ?? "")!
        client = AFRKHTTPClient(baseURL: baseURL)
        client.setDefaultHeader("Authorization", value: AUTH_HEADER)
        client.setDefaultHeader("Content-Type", value: "application/json")
      //  'Content-Type: application/json'
        objectManager = RKObjectManager(httpClient: client)
        let mapping1 = mapComplexTypes()!
        statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClass.successful)
        
        
        
        
        
        
        //objectManager = RKObjectManager(httpClient: client)
        let mapping = GameMapping.inverseMappingWithPropertyMappings(passingTest: {$0?.sourceKeyPath == "game" ? true: true })
            //.inverseMappingWithPropertyMappings(passingTest: //);
        resDescriptor = RKResponseDescriptor(mapping: mapping, method: RKRequestMethod.GET, pathPattern: path, keyPath: nil, statusCodes: statusCodes)
        objectManager.addResponseDescriptor(resDescriptor)
        

        let requestDescriptor = RKRequestDescriptor(mapping: mapping, objectClass: ModelsSportsGame.self, rootKeyPath: nil, method: RKRequestMethod.PUT)
        //resDescriptor = RKResponseDescriptor(mapping: venueMapping, method: RKRequestMethod.POST, pathPattern: path, keyPath: nil, statusCodes: statusCodes)
        objectManager.addRequestDescriptor(requestDescriptor)
    }
    func postObject(path: String?, object: ModelsSportsLocation)
    {
        let params = ["key1": "value1", "key2": "value2"]
        objectManager.put(object, path: path ,parameters: nil,
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
