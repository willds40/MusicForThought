import Foundation

class DescriptionVM{
    var searchAdapter = SearchAdapter()
    var searchTermBySongID:Double?
    var songLib = [String]()
    var songsToGetDescriptionsOf = 0
    
    func addSong(_ song:Song){
        songsToGetDescriptionsOf += 1
        songLib.append(song.songTitle!)
        songLib.append(String(describing: song.id!))
        songLib.append(song.description!)
        songLib.append(song.coverArt!)
    }
    var sectionHeaders = ["Title", "ID", "Description", "Cover Art"]
}
