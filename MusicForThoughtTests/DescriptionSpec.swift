import Quick
import Nimble
@testable import MusicForThought

class DescriptionSpec: QuickSpec{
    override func spec() {
        var descriptionVM:DescriptionVM!
        beforeEach {
         descriptionVM =  DescriptionVM()
        }
        describe("DescriptionVM"){
            describe("section headers"){
                it("should be an array with four elements"){
                expect(descriptionVM.sectionHeaders.count).to(equal(4))
                }
            }
        }
        describe("Song Descriptions"){
            it(" description title should equal the song title of the song passed into the search adapter"){
            let searchAdapter = SearchAdapter()
            descriptionVM.song = Song(songTitle: "Test", id: "1", description: "", coverArt: "")
           var result = searchAdapter.getSongDescriptions(song: descriptionVM.song!)
                expect(result[0]).toEventually(equal(descriptionVM.showSongDescriptions[0]))
            }
        }
    }
}
