import Foundation

class SongsVM{
    var searchAdapter = SearchAdapter()
    var songID = 0.0
    var songs = [Song]()
    var songTitle = ""
    var searchTermByGenre = ""{
        didSet{
         songs = Songs().getSongs(searchTermByGenre: searchTermByGenre)
        }
    }
    func getSongByID(_ song:[String:Any])->Double{
        if let key = song.keys.filter({ $0.lowercased().contains("id") }).first, let id = song[key] {
            songID  = id as! Double
        }
        return songID
    }
    func getSongByTitle(_ song: [String:Any])->String{
        if let key = song.keys.filter({ $0.lowercased().contains("name") }).first, let name = song[key] {
            songTitle  = name as! String
        }
        return songTitle
    }
}
