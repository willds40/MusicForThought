import Foundation

class SubTagVM{
    var searchAdapter = SearchAdapter()
    var genres = [Genre]()
    var genreId:[String]?
        {didSet{
            genres = searchAdapter.searchGenres(genreID: genreId!)!
        }
    }

}
