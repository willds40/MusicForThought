import Foundation

class SongsVM{
    var searchAdapter = SearchAdapter()
    var songs = [Song]()
    var songsAsscoaitedWithTheGenre = [Int]()
        {didSet{
            songs = searchAdapter.searchSongs(songsAsscoaitedWithTheGenre)!}
    }
}
