import Foundation
import SwiftyJSON

class SearchAdapter {
    var api = API()
    var result:[String:String]!
    var songLib = SongLibrary()
    var genreLib = GenresLibrary()
    
    func createCategories() -> [Category]? {
    var categories: [Category] = []
    let jsonObj = api.retrieveData(forPath: api.findJSONfilePath(forPath: "CategoriesData"))
    for (_, title) in jsonObj! {
    categories.append(Category(type: String(describing: title)))
    }
    return categories
    }
   
    
    func searchMusicByCategory(_ searchTerm:String) ->[Genre]{
        api.searchReguest(endpoint: searchTerm, endPontID: nil, endPointID2: nil)
    let fetchedGenreLib = genreLib.getGenreLib()
        return fetchedGenreLib
    }
    
    func searchSongsByGenre(_ searchTerm:String)->[Song]{
        api.searchReguest(endpoint: searchTerm, endPontID: nil, endPointID2: nil)
        let fetchedSongLib = songLib.getSongLib(song: nil)
        if searchTerm != "Search All Genre"{
            var fetchedSongs = [Song]()
            for song in fetchedSongLib{
                if (searchTerm == song.genre){
                    fetchedSongs.append(song)
                }
            }
            return fetchedSongs
        } else
        {
            return fetchedSongLib
        }
    }
    
    func searchSongById(ID:Double, ID2:Double?)->[Song]{
        if ID2 == nil {
            api.searchReguest(endpoint: nil, endPontID: ID, endPointID2: nil)
        } else {
            api.searchReguest(endpoint: nil, endPontID: ID, endPointID2: ID2)
        }
        let fetchedSongLib = songLib.getSongLib(song: nil)
        return fetchedSongLib
}
}
