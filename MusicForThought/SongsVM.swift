import Foundation

class SongsVM{
    var searchAdapter = SearchAdapter()
    var songs = [Song]()
      var searchTermByGenre = ""{
        didSet{
        songs = searchAdapter.searchSongsByGenre(searchTermByGenre)
        }
    }
}
