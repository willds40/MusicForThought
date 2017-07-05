import Foundation

class Category{
    var type:String?
    var genreIDs = [String]()
    
    init(type:String,genreIDs:[String]) {
        self.type = type
        self.genreIDs = genreIDs
    }
}
