
import Foundation
class SearchAdapter {
    var api = API()
    func searchMusicByCategory(_ searchTerm:String){
    let result = api.searchReguest(endpoint: "/api/1/" + searchTerm)
        
    
    }
    
    
    
    
    
    
    func searchByGenre(_searchTerm:String){
    
    
    }
    
    func searchBySong(_searchBySongID:Double){
    
    }
}
