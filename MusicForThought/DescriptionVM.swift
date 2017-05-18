import Foundation

class DescriptionVM{
    var searchAdapter = SearchAdapter()
    var searchTermBySongID:Double?
    var songLib = [String]()
    
    func addSong(_ song:Song){
        songLib.append(song.songTitle!)
        songLib.append(String(describing: song.id!))
        songLib.append(song.description!)
        songLib.append(song.coverArt!)
    }
}
