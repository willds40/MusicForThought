import Foundation

class SongsVM{
    var reloadTableView: ((SongsVM) -> ())?
    var searchAdapter = SearchAdapter()
    var songsAsscoaitedWithTheGenre = [Int](){
    didSet{
        getSongs(songsAsscoaitedWithTheGenre)
        }
    }
    
    var songs = [Song](){
        didSet{
            self.reloadTableView?(self)
        }
    }
    
    private func getSongs(_ songsAssociatedWithTheGenre: [Int]){
        searchAdapter.searchSongs( songsAssociatedWithTheGenre){ response in
            self.songs = response
        }
    }
}
