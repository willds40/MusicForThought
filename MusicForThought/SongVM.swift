import Foundation

class SongVM{
    var searchAdapter:SearchAdapter?
    var genres: [String] = Genres().genres
    var searchTermBySong:String?{
        didSet{
            searchAdapter?.searchMusicBy(searchTermBySong!)
        }
    }
}
