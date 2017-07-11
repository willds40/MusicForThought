import Foundation
import ReactiveCocoa
import ReactiveSwift

class SubTagVM{
    var reloadTableView: ((SubTagVM) -> ())?
    var searchAdapter = SearchAdapter()
    var genreId:[String]?
    var genres = MutableProperty<[Genre]>([])
        
    init() {
        getGenres()
    }
    
    private func getGenres() {
        searchAdapter.searchGenres(){response in
            self.genres.value = response
        }
    }
}


