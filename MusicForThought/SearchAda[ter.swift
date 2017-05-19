
import Foundation
class SearchAdapter {
    var api = API()
    //var categories:Categories!
    var result:[String:String]!
    var songLib = SongLibrary()
    var genreLib = GenresLibrary()
    
    func searchMusicByCategory(_ searchTerm:String) ->[Genre]{
    let fetchedGenreLib = genreLib.getGenreLib()
        return fetchedGenreLib
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
