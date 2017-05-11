//
//  API.swift
//  MusicForThought
//
//  Created by Will Devon-Sand on 5/10/17.
//  Copyright © 2017 Will Devon-Sand. All rights reserved.
//
import Alamofire
import Foundation
class API{
    var result:[String:String]?
    func searchReguest(endpoint:String)->Dictionary<String,String>{
        let url = endpoint
        var key = ""
        let value = " "
        result = [String:String]()
        Alamofire.request(url)
            .responseJSON { response in
                guard response.result.error == nil else {
                    print("error calling GET on endpoint")
                    print(response.result.error!)
                    return
                }
                guard let json = response.result.value as? [String: Any] else {
                    print("didn't get todo object as JSON from API")
                    print("Error: \(response.result.error)")
                    return
                }
                // get and print the title
                guard let tagTitle = json["title"] as? String else {
                    print("Could not get todo title from JSON")
                    return
                }
                key = tagTitle
                // get and print the id
                guard let tagID = json["id"] as? String
                    else {
                        print("Could not get id from JSON")
                        return
                }
                key = tagID
        }
        result?[key] = value
        return result!
    }
}
