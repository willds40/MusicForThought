
import Foundation
class SearchAdapter {
    var api = API()
    var categories:Categories!
    var result:[String:String]!
    
    func searchMusicByCategory(_ searchTerm:String){
    categories = Categories()
    result = api.searchReguest(endpoint: "/api/1/" + searchTerm)
     categories.categoriesDictionary.merge(dict: result)
    }
    
    func searchByGenre(_searchTerm:String){
    }
    
    func searchBySong(_searchBySongID:Double){
    }
}
