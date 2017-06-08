import Alamofire
import Foundation
import SwiftyJSON

class API{
    var url:String?
    func retrieveData(forPath path: String) -> JSON? {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
            let jsonObj = JSON(data: data as Data)
            return jsonObj
        } catch {
            print("unable to parse JSON file")
        }
        return nil
    }
    
    func findJSONfilePath(forPath : String) -> String {
        return Bundle.main.path(forResource: forPath, ofType: "JSON")!
    }
    
    func searchReguest(endpoint:String?, endPontID:Double?, endPointID2: Double?){
        //how to refactor
        if endpoint != nil {
            url = endpoint
        } else if (endPontID != nil) && endPointID2 != nil {
            url = String(describing: endPontID!) + "+" + String(describing: endPointID2!)
        }else{
            url = String(describing: endPontID!)
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
