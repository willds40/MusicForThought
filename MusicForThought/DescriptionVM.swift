
import Foundation

class DescriptionVM{
    var searchAdapter = SearchAdapter()
     //var songs: [String] =
    var searchTermBySongID:Double?{
        didSet{
           // searchAdapter.searchBySong(_searchBySongID: searchTermBySongID!)
        }
    }

}
