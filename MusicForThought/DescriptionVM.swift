
import Foundation

class DescriptionVM{
    var searchAdapter = SearchAdapter()
    var songDescription:Array <Any>?
    var songTitles:[String]?
    var song:[String:Any]?{
        didSet{
        songDescription = getSongDescriptions(song!)
        songTitles = getSongTitles(song!)
        }
    }
        
    
    var searchTermBySongID:Double?
       // {
//        didSet{
//            _ = Songs().getSeongbyID(searchTermBySongID!)
//            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "reloadCollectionView"), object: nil)
//
//          searchAdapter.searchBySong(_searchBySongID: searchTermBySongID!)
//       }
   // }
    
    
    
   private func getSongDescriptions(_ song:[String:Any])->[Any]{
    return Array(song.values)
    }
    private func getSongTitles(_ song:[String:Any])->[String]{
    return Array(song.keys)
    }
    
}
