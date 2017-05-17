import Foundation

class DescriptionVM{
    var searchAdapter = SearchAdapter()
    var songDescription:Array <Any>?
    var songTitles:[String]?
    var searchTermBySongID:Double?
    var song:[String:Any]?{
        didSet{
            songDescription = getSongDescriptions(song!)
            songTitles = getSongTitles(song!)
        }
    }
    
    private func getSongDescriptions(_ song:[String:Any])->[Any]{
        return Array(song.values)
    }
    private func getSongTitles(_ song:[String:Any])->[String]{
        return Array(song.keys)
    }
}
