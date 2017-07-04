import Foundation
import SwiftyJSON

class SearchAdapter {
    var api = API()
    var result:[String:String]!
    var categories: [Category] = []
    var genres: [Genre] = []
    var songs: [Song] = []
    
    func searchCategories(handler: @escaping ([Category]) -> Void) {
        api.retrieveData(forPath: "categories") { response in
            self.categories = self.createCategories(jsonObj: response)!
            handler(self.categories)
        }
    }
    
    func searchGenres(handler: @escaping ([Genre]) -> Void) {
        api.retrieveData(forPath: "genres") { response in
            self.genres = self.createGenres(jsonObj: response)
            handler(self.genres)
        }
    }
    
    func searchSongs(_ songsAssociatedWithTheGenre: [Int], handler: @escaping ([Song]) ->Void) {
        api.retrieveData(forPath: "songs"){ response in
            self.songs = self.createSongs(jsonObj: response, songsAssociatedWithTheGenre)
            handler(self.songs)
        }
    }
    
    private func createSongs (jsonObj:JSON, _ songsAssociatedWithTheGenre:[Int])-> [Song]{
        
        for (id, info) in jsonObj {
            if songsAssociatedWithTheGenre.contains(Int(id)!){
                songs.append(Song(songTitle: String(describing: info["name"]), id: id, description: String(describing: info["description"]), coverArt: String(describing: info["coverArt"])))
            }
        }
        return songs
    }
    
    private func createCategories(jsonObj:JSON)->[Category]?{
        for (_, title) in jsonObj {
            categories.append(Category(type: String(describing: title),genreIDs:["1","2"]))
        }
        return categories
    }
    
    private func createGenres(jsonObj:JSON)->[Genre]{
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
    
    func getSongDescriptions(song:Song)->[String]{
        let songDescriptions = [song.songTitle!,String(describing: song.id!),song.description!,song.coverArt!]
        return songDescriptions
    }
}
