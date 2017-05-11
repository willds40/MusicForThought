import Quick
import Nimble
@testable import MusicForThought

class SongSpec: QuickSpec{
    override func spec() {
        describe("songVM"){
            class mockSongCVC:SongCVC{
                override func mockSearchTermByGenre(searchTerm:String)->String{
                    let songVM = SongsVM()
                    songVM.searchTermByGenre = searchTerm
                    return songVM.searchTermByGenre
                }
            }
            context("search in TVC is equal to Rock"){
                it("search term should be equal to Rock"){
                    let myClassInstance = mockSongCVC()
                    let searchTerm = "Rock"
                    let result = myClassInstance.mockSearchTermByGenre(searchTerm: searchTerm)
                    expect(result).to(equal("Rock"))
                }
            }
        }
    }
}
