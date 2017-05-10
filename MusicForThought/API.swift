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
    func searchReguest(endpoint:String)->String{
        let url = endpoint
        var result = " "
        Alamofire.request(url)
            .responseJSON { response in
                // check for errors
                guard response.result.error == nil else {
                    // got an error in getting the data, need to handle it
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
                guard let todoTitle = json["title"] as? String else {
                    print("Could not get todo title from JSON")
                    return
                }
                result = todoTitle
        }
        return result
    }
}
