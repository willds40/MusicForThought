import Foundation
import SwiftyJSON

class SearchAdapter {
    var api = API()
    var result:[String:String]!
    var categories: [Category] = []
    var genres: [Genre] = []
    var songs: [Song] = []
    
    func searchCategories() -> [Category]? {
        let jsonObj = api.retrieveData(forPath: api.findJSONfilePath(forPath: "CategoriesData"))
        categories = createCategories(jsonObj: jsonObj!)!
        _ = api.dummySearchRequestIfAPIExisted(forPath: "/api/1/tags")
        return categories
    }
    
    private func createCategories(jsonObj:JSON)->[Category]?{
        for (_, title) in jsonObj {
            categories.append(Category(type: String(describing: title),genreIDs:["1","2"]))
        }
        return categories
    }
    
    func searchGenres(genreID:[String]) -> [Genre]? {
        let jsonObj = api.retrieveData(forPath: api.findJSONfilePath(forPath: "GenreData"))
        _ = api.dummySearchRequestIfAPIExisted(forPath: "/api/1/category/agt/{" + "\(genreID)" + "}")
        genres = createGenres(jsonObj: jsonObj!)
        return genres
    }
    
    func createGenres(jsonObj:JSON)->[Genre]{
        for (id, info) in jsonObj {
            genres.append(Genre(String(describing: info["name"]), id: id, songIDs: addSongsToGenres(forID: info["songs"])!))
        }
        return genres
    }
    
    private func addSongsToGenres(forID songs: JSON) -> [Int]? {
        var songList = [Int]()
        for (_, song) in songs {
            songList.append(Int(String(describing: song))!)
        }
        return songList
    }
    
    func searchSongs(_ songsAssociatedWithTheGenre:[Int]) -> [Song]? {
        let jsonObj = api.retrieveData(forPath: api.findJSONfilePath(forPath: "SongData"))
        songs = createSongs(jsonObj: jsonObj!, _songsAssociatedWithTheGenre: songsAssociatedWithTheGenre)
        let songIdsAsStrings = songsAssociatedWithTheGenre.map
            {String($0)}
        _ = api.dummySearchRequestIfAPIExisted(forPath: String( "/api/1/song/multi?id=" + songIdsAsStrings.joined(separator: "&id=")))
        return songs
    }
    
    private func createSongs (jsonObj:JSON, _songsAssociatedWithTheGenre:[Int])-> [Song]{
        for (id, info) in jsonObj {
            if _songsAssociatedWithTheGenre.contains(Int(id)!){
                songs.append(Song(songTitle: String(describing: info["name"]), id: id, description: String(describing: info["description"]), coverArt: String(describing: info["coverArt"])))
            }
        }
        return songs
    }
    
    func getSongDescriptions(song:Song)->[String]{
        var songDescriptions = [String]()
        songDescriptions.append(song.songTitle!)
        songDescriptions.append(String(describing: song.id!))
        songDescriptions.append(song.description!)
        songDescriptions.append(song.coverArt!)
        return songDescriptions
    }
    
    
}
