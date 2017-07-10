import Foundation

class TagVM{
    var searchAdapter = SearchAdapter()
    var title = "FIND MUSIC BY"
    //would have used reactive coca but didn't work with the new xcode
    var reloadTableView: ((TagVM) -> ())?
    var tags: [Category]=[]{
        didSet{
            self.reloadTableView?(self)
        }
    }
    
    init() {
        getTags()
    }

    private func getTags(){
        searchAdapter.searchCategories(){response in
        self.tags = response        }
    }
  }



