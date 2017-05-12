
import Foundation

class DescriptionVM{
    var searchAdapter = SearchAdapter()
        
    
    var searchTermBySongID:Double?{
        didSet{
//            _ = Songs().getSeongbyID(searchTermBySongID!)
//            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "reloadCollectionView"), object: nil)

          searchAdapter.searchBySong(_searchBySongID: searchTermBySongID!)
       }
    }
    
}
