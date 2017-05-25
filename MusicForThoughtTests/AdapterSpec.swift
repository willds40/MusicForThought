import Quick
import Nimble
@testable import MusicForThought

class AdapterSpec: QuickSpec{
    override func spec() {
        var searchAdapter:SearchAdapter!
        describe("search tern by categoruy"){
            beforeEach {
                searchAdapter = SearchAdapter()
            }
            it("return value should equal amount in the genre lub"){
                let genreLib = GenresLibrary()
                let result = searchAdapter.searchMusicByCategory("testSong")
                expect(result.count).to(equal(genreLib.getGenreLib().count))
            }
        }
        describe("search song by genre"){
            context("when search term equals search by all genres"){
                it("should return a value equal to the number in the song lib"){
                let songLib = SongLibrary()
                let result = searchAdapter.searchSongsByGenre("Search All Genre")
                    expect(result.count).to(equal(songLib.getSongLib(song: nil).count))
                
                }
            }
            context("when search term equals Rap"){
                it("should equal the number of songs in the library that are rap"){
                    let searchAdapter = SearchAdapter()
                let rapSongs = searchAdapter.searchSongsByGenre("Rap")
                expect(rapSongs.count).to(equal(2))
                }
            }
        }
        
    }
}

