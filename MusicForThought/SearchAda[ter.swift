import Foundation
import SwiftyJSON

class SearchAdapter {
    var api = API()
    var result:[String:String]!
    
    func searchCategories() -> [Category]? {
        var categories: [Category] = []
        let jsonObj = api.retrieveData(forPath: api.findJSONfilePath(forPath: "CategoriesData"))
        for (_, title) in jsonObj! {
            categories.append(Category(type: String(describing: title),genreIDs:["1","2"]))
        }
        _ = api.dummySearchRequestIfAPIExisted(forPath: "/api/1/tags")
        return categories
    }
    
    func searchGenres(genreID:[String]) -> [Genre]? {
        var genres: [Genre] = []
        let jsonObj = api.retrieveData(forPath: api.findJSONfilePath(forPath: "GenreData"))
        for (id, info) in jsonObj! {
            genres.append(Genre(String(describing: info["name"]), id: id, songIDs: addSongs(forID: info["songs"])!))
        }
        _ = api.dummySearchRequestIfAPIExisted(forPath: "/api/1/category/agt/{" + "\(genreID)" + "}")
        return genres
    }
    
    private func addSongs(forID songs: JSON) -> [Int]? {
        var songList = [Int]()
        for (_, song) in songs {
            songList.append(Int(String(describing: song))!)
        }
        return songList
    }
    
    func createSongs(_ songsAssociatedWithTheGenre:[Int]) -> [Song]? {
        var songs: [Song] = []
        let jsonObj = api.retrieveData(forPath: api.findJSONfilePath(forPath: "SongData"))
        for (id, info) in jsonObj! {
            if songsAssociatedWithTheGenre.contains(Int(id)!){
                songs.append(Song(songTitle: String(describing: info["name"]), id: id, description: String(describing: info["description"]), coverArt: String(describing: info["coverArt"])))
            }
        }
        let songIdsAsStrings = songsAssociatedWithTheGenre.map
            {String($0)}
        _ = api.dummySearchRequestIfAPIExisted(forPath: String( "/api/1/song/multi?id=" + songIdsAsStrings.joined(separator: "&id=")))
        return songs
    }
}
