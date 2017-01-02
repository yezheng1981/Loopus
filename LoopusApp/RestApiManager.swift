//
//  RestApiManager.swift
//  LoopusApp
//
//  Created by YeZheng on 12/31/16.
//  Copyright © 2016 Allen. All rights reserved.
//

import UIKit
import Alamofire

class RestApiManager: NSObject {

    static let sharedInstance = RestApiManager()
    
    let baseURL = "http://localhost/"
    
    func getEvents() ->Void
    {
        Alamofire.request("http://localhost:8080/calevents/").responseJSON { response in
            print(response.request!)  // original URL request
            print(response.response!) // HTTP URL response
            print(response.data!)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }
    
   }
