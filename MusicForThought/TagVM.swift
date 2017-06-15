import Foundation

class TagVM{
    var tags: [Category]?
    var searchAdapter = SearchAdapter()
    init() {
       NotificationCenter.default.addObserver(self, selector: #selector(TagVM.updateCategories), name: NSNotification.Name(rawValue: "categoriesRecieved"), object: nil)
      tags = searchAdapter.searchCategories()
    }
    
      @objc func updateCategories(){
        self.tags = self.searchAdapter.categories
        DispatchQueue.main.async{
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "reloadTable"), object: nil)
        }

    }
}


