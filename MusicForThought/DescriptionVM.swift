
import Foundation

class DescriptionVM{
    var searchAdapter = SearchAdapter()
    var searchTermBySongID:Double?{
        didSet{
            searchAdapter.searchBySong(_searchBySongID: searchTermBySongID!)
        }
    }

}
