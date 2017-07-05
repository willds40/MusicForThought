import Foundation

class TagVM{
    var searchAdapter = SearchAdapter()
    var title = "FIND MUSIC BY"
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



