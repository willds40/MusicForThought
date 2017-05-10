import Foundation

class SubTagVM{
    var searchAdapter:SearchAdapter?
    var genres: [String] = Genres().genres
    var searchTermByCategory:String?{
        didSet{
            searchAdapter?.searchMusicByCategory(searchTermByCategory!)
        }
    }
}
