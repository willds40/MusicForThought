import Foundation

class SongVM{
    var searchAdapter = SearchAdapter()
    var genres: [String] = Genres().getGenres()
    var searchTermByGenre:String?{
        didSet{
            searchAdapter.searchByGenre(_searchTerm: searchTermByGenre!)
        }
    }
}
