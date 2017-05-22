import Foundation
class CategoriesLibrary{
    var categoriesDictionary = ["Artist":"1", "Album":"2", "Genre":"3"]
    
    var artistCategory = Category(type: "Artist")
    var albumCateogry = Category(type: "Album")
    var genreCategory = Category (type: "Genre")
    
    func getCatLib()->[Category]{
        var catLib = [Category]()
        catLib.append(artistCategory)
        catLib.append(albumCateogry)
        catLib.append(genreCategory)
        return catLib
    }
}

