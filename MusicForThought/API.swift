import Alamofire
import Foundation
import SwiftyJSON

class API{
    func uploadData(){
        let paramters = MockData().getParamters()
        Alamofire.request("http://192.168.0.15:2525/imposters/", method: .post, parameters: paramters, encoding: JSONEncoding.default).responseJSON{ response in
        }
    }
    
    func retrieveData(forPath path: String, completion : @escaping (JSON) -> ()){
        Alamofire.request("http://192.168.0.15:4545/" + "\(path)").responseJSON { response in
            let jsonData = JSON(data: response.data!)
            completion(jsonData)
            
        }
    }
}
