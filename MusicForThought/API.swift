import Alamofire
import Foundation
import SwiftyJSON

class API{
    func uploadData(){
        let paramters = MockData().getParamters()
        Alamofire.request("http://localhost:2525/imposters/", method: .post, parameters: paramters, encoding: JSONEncoding.default).responseJSON{ response in
        }
    }
    
    func retrieveData(forPath path: String, completion : @escaping (JSON) -> ()){
        Alamofire.request("http://localhost:4545/" + "\(path)").responseJSON { response in
            var jsonData = JSON(data: response.data!)
            if jsonData.isEmpty {jsonData = self.returnMockDataWhenNoInternnet(path)}
            completion(jsonData)
            
        }
    }
    
    private func returnMockDataWhenNoInternnet(_ path:String)->JSON{
        switch (path){
        case "categories": return NoInternetData().getCategories()
        case "genres": return NoInternetData().getGenres()
        case "songs": return NoInternetData().getSongs()
        default: return JSON.null
       
        }
    }
    
}
