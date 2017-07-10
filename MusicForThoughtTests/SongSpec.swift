import Quick
import Nimble
@testable import MusicForThought

class SongSpec: QuickSpec{
    override func spec() {
        let songVM = SongsVM()
        describe("songVM"){
            let serchAdapter = SearchAdapter()
            var songs = [Song]()
            it("should have an array with the same amount of songs as retrieved from the Search Adapter"){
                serchAdapter.searchSongs([1,2], handler:{ resposne in
                    songs = resposne
                })
            expect(songVM.songs.count).toEventually(equal(songs.count))
            }
        }
    }
}
