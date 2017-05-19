import Foundation

class SubTagVM{
    var searchAdapter = SearchAdapter()
    var genres: [Genre]?
    var searchTermByCategory:String?{
        didSet{
            genres = searchAdapter.searchMusicByCategory(searchTermByCategory!)
        }
    }
}
