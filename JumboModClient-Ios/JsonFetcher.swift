//
//  JsonFetcher.swift
//  SplicerClient-Swift
//
//  Created by Aaron Evans on 4/16/20.
//  Copyright © 2020 Aaron Evans. All rights reserved.
//

//  The converted code is limited to 2 KB.
//  Upgrade your plan to remove this limitation.
//
//  Converted to Swift 5.1 by Swiftify v5.1.31847 - https://swiftify.com/
import Foundation
import RestKit

var testUsers: [AnyHashable]?
let SERVER_BASE_URL = "http://localhost:9000" //
let AUTH_HEADER = "Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImF1dGgiOiJST0xFX0FETUlOLFJPTEVfVVNFUiIsImV4cCI6MTU4ODYxNjY4NH0.Ln1M_VzMd_HXfR6J3EFDQfJudOBwqMf1JK32R3WlHZLvlf6wfgT9Cc7_I04Dotbi4Vp_EpHe0y4ZE9HVWQme0w";

class JsonFetcher : JsonMapper {
    var testUsers: [Any]!
    
    var baseURL: URL!;// = URL(string: baseUrl ?? "")
    var client: AFRKHTTPClient!;// = AFRKHTTPClient(baseURL: baseURL)
    var objectManager: RKObjectManager!;// = RKObjectManager(httpClient: client)
    //var mapping: RKObjectMapping!;// = mapComplexTypes()
    var statusCodes: IndexSet = [];// = RKStatusCodeIndexSetForClass(RKStatusCodeClass.successful)
    var resDescriptor: RKResponseDescriptor!;// = RKResponseDescriptor(mapping: mapping, method: RKRequestMethod.GET, pathPattern: path, keyPath: nil, statusCodes: statusCodes)
    
    //RKObjectManager objectManager;
    
    func setup(_ baseUrl: String?, path: String?) {
        baseURL = URL(string: baseUrl ?? "")!
        client = AFRKHTTPClient(baseURL: baseURL)
        client.setDefaultHeader("Authorization", value: AUTH_HEADER)
        objectManager = RKObjectManager(httpClient: client)
        let mapping = mapComplexTypes()!
        statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClass.successful)
        resDescriptor = RKResponseDescriptor(mapping: mapping, method: RKRequestMethod.GET, pathPattern: path, keyPath: nil, statusCodes: statusCodes)
        objectManager.addResponseDescriptor(resDescriptor)
    }
    /*
    func execute(_ path: String?) {
        let queryParams = [
            "dummy": "dummyParam"
        ]
        //RKObjectManager.shared().getObjectsAtPath(path /*@"/v2/venues/search" */, parameters: queryParams,
        RKObjectManager.shared().getObjectsAtPath("/posts/1", parameters: nil,
                                                  success: { (operation, mappingResult) -> Void in
                                                  //success: { operation, mappingResult in
                                                    self.testUsers = mappingResult?.array();//?.array
        }, failure: { operation, error in
            if let error = error {
                print("Failure of GET:/user with error \(error).")
            }
        })
        
    }
 */
}
