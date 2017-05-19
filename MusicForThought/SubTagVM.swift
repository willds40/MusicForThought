import Foundation

class SubTagVM{
    var searchAdapter = SearchAdapter()
    var genres: [Genre] = GenresLibrary().getGenreLib()
    var searchTermByCategory:String?{
        didSet{
            searchAdapter.searchMusicByCategory(searchTermByCategory!)
        }
    }
}
