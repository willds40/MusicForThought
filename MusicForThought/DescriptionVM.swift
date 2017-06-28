import Foundation

class DescriptionVM{
    var searchAdapter = SearchAdapter()
    var showSongDescriptions = [String]()
    var sectionHeaders = ["Title", "ID", "Description", "Cover Art"]
    var song:Song?{
        didSet{
            showSongDescriptions = searchAdapter.getSongDescriptions(song: song!)
        }
    }
}

    
