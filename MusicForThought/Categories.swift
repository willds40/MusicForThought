import Foundation
class Categories{
    var categoriesDictionary = ["Artist":"1", "Album":"2", "Genre":"3"]
    
    func getCategories()->Array<String>{
        return Array(categoriesDictionary.keys)
    }
}

