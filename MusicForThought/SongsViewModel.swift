import Foundation
import ReactiveSwift
import ReactiveCocoa

class SongsVM{
    var songs = MutableProperty<[Song]>([])
    var searchAdapter = SearchAdapter()
    var songsAsscoaitedWithTheGenre = [Int](){
    didSet{
        getSongs(songsAsscoaitedWithTheGenre)
        }
    }
    
    private func getSongs(_ songsAssociatedWithTheGenre: [Int]){
        searchAdapter.searchSongs( songsAssociatedWithTheGenre){ response in
            self.songs.value = response
        }
    }
}
