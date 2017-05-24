import Alamofire
import Foundation

class API{
    func searchReguest(endpoint:String?, endPontID:Double?, endPointID2: Double?){
        var url:String?
        //how to refactor
        if endpoint != nil {
            url = endpoint
        } else if (endPontID != nil) && endPointID2 != nil {
            url = String(describing: endPontID) + String(describing: endPointID2)
        }else{
            url = String(describing: endPontID)
        }
        Alamofire.request(url!)
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
                guard (json["song"] as? Song) != nil else {
                    _ = SongLibrary().getSongLib(song: json["song"] as! Song?)
                    print("Could not get todo title from JSON")
                    return
                    
                }
        }
    }
}
