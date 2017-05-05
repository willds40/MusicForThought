import Foundation

class SubTagVM{
    var searchAdapter:SearchAdapter?
    init(searchTerm:String) {
    searchAdapter?.searchMusicBy(searchTerm)
    }
}
