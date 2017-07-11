import Foundation
import ReactiveCocoa
import ReactiveSwift

class TagVM{
    var searchAdapter = SearchAdapter()
    var title = "FIND MUSIC BY"
    var tags = MutableProperty<[Category]>([])
    
    init() {
        getTags()
    }

    private func getTags(){
        searchAdapter.searchCategories(){response in
        self.tags.value = response        }
    }
  }



