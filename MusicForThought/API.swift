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
            return nil
        }
    }
    
    func findJSONfilePath(forPath : String) -> String {
        return Bundle.main.path(forResource: forPath, ofType: "JSON")!
    }
    
    func dummySearchRequestIfAPIExisted(forPath path:String)->JSON{
        url = path
        Alamofire.request(url!)
            .responseJSON { response in
                guard response.result.error == nil else {
                    print("error calling GET on")
                    print(response.result.error!)
                    return
                }
                guard (response.result.value as? [String: Any]) != nil else {
                    print("didn't get object as JSON from API")
                    print("Error: \(response.result.error)")
                    return
                }
        }
    return JSON.null
    }
}
