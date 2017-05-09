import Foundation

class SubTagVM{
    var searchAdapter:SearchAdapter?
    var genres: [String] = Genres().genres
    var searchTermByGenre:String?{
        didSet{
            searchAdapter?.searchMusicBy(searchTermByGenre!)
        }
    }
}
