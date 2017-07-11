import Foundation
import ReactiveCocoa
import ReactiveSwift

class TagVM{
    var searchAdapter = SearchAdapter()
    var title = "FIND MUSIC BY"
    //would have used reactive coca but didn't work with the new xcode
    var tags = MutableProperty<[Category]>([])
    
    init() {
        getTags()
    }

    private func getTags(){
        searchAdapter.searchCategories(){response in
        self.tags.value = response        }
    }
  }



