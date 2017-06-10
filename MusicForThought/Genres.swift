import Foundation

class Genre{
    var name:String?
    var id:String?
    var songIDs : [Int]?
    init(_ name:String, id:String, songIDs:[Int]) {
        self.name = name
        self.id = id
        self.songIDs = songIDs
    }
}
