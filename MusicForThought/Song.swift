import Foundation
class Song {
    let songTitle:String?
    let id:Double?
    let description: String?
    let coverArt:String?
    
    init(songTitle:String, id:Double, description:String, coverArt:String ) {
        self.songTitle = songTitle
        self.id = id
        self.description = description
        self.coverArt = coverArt
    }
}
