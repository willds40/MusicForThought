
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
    
    func getSongs(searchTermByGenre:String)->[Song]{
        let songLibrary = SongLibrary()
        var allSongs = [Song]()
        if (searchTermByGenre == "Rap"){
            allSongs = songLibrary.getRapSongs()
        }
        if(searchTermByGenre == "Rock"){
            allSongs = songLibrary.getRockSongs()        }
        if (searchTermByGenre == "Search All Genres"){
            allSongs = songLibrary.getAllSongs()
        }
        return allSongs
    }
    
    
    
    func searchByGenre(_searchTerm:String){
    }
    
    func searchBySong(_searchBySongID:Double){
    }
}
