import Foundation

class SubTagVM{
    var searchAdapter:SearchAdapter?
    var searchTerm:String?{
        didSet{
            searchAdapter?.searchMusicBy(searchTerm!)
        }
    }
}
