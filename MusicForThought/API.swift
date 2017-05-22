import Alamofire
import Foundation

class API{
    func searchReguestByGenreOrCategory(endpoint:String){
        let url = endpoint
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
                guard (json["song"] as? String) != nil else {
                    
                    print("Could not get todo title from JSON")
                    return
                    
                }
        }
    }
}
