import Foundation

class SubTagVM{
    var searchAdapter = SearchAdapter()
    var genres: [String] = Genres().getGenres()
    var searchTermByCategory:String?{
        didSet{
            //searchAdapter.searchMusicByCategory(searchTermByCategory!)
        }
    }
}
