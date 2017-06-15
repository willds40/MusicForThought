import Foundation
import Alamofire
class CategoriesLibrary{
    func getCategories()-> Parameters{
    let categories = [
        "1": "Artists",
        "2": "Albums",
        "3": "Genre"
    ]
    return categories
}
}
