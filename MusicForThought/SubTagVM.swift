import Foundation

class SubTagVM{
    var searchAdapter:SearchAdapter?
    var searchTermByGenre:String?{
        didSet{
            searchAdapter?.searchMusicBy(searchTermByGenre!)
        }
    }
}
