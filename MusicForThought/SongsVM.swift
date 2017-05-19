import Foundation

class SongsVM{
    var searchAdapter = SearchAdapter()
    var songID = 0.0
    var songs = [Song]()
    var songTitle = ""
    var searchTermByGenre = ""{
        didSet{
        songs = searchAdapter.getSongsByGenre(searchTermByGenre)
        }
    }
}
