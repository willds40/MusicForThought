import Foundation

class SubTagVM{
    var reloadTableView: ((SubTagVM) -> ())?
    var searchAdapter = SearchAdapter()
    var genreId:[String]?
    var genres:[Genre] = []{
        didSet{
            self.reloadTableView?(self)
        }
    }
    init() {
        getGenres()
    }
    
    private func getGenres() {
        searchAdapter.searchGenres(){response in
            self.genres = response
        }
    }
}


