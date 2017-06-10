import Foundation
class Song {
    let songTitle:String?
    let id:String?
    let description: String?
    let coverArt:String?
    init(songTitle:String, id:String, description:String, coverArt:String) {
        self.songTitle = songTitle
        self.id = id
        self.description = description
        self.coverArt = coverArt
    }
}
