
import Foundation
class SearchAdapter {
    var api = API()
    var categories:Categories!
    var result:[String:String]!
    var songLib = SongLibrary()
    
    func searchMusicByCategory(_ searchTerm:String){
        categories = Categories()
        result = api.searchReguest(endpoint: "/api/1/" + searchTerm)
        categories.categoriesDictionary.merge(dict: result)
    }
    
    func searchSongsByGenre(_ searchTerm:String)->[Song]{
        //passes info to the api
        //api.searchReguest(endpoint: searchTerm)
        //interprets info from the song lib
        let fetchedSongLib = songLib.getSongLib()
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
    
    func searchByGenre(_searchTerm:String){
    }
    
    func searchBySong(_searchBySongID:Double){
    }
}
