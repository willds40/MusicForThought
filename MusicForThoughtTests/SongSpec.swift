import Quick
import Nimble
@testable import MusicForThought

class SongSpec: QuickSpec{
    override func spec() {
        describe("songVM"){
            class mockSongCVC:SongCVC{
                override func mockSetSearchTermBySong(searchTerm:String)->String{
                    let songVM = SongVM()
                    songVM.searchTermBySong = searchTerm
                    return songVM.searchTermBySong!
                }
            }
            context("search in TVC is equal to Rock"){
                it("search term should be equal to Rock"){
                    let myClassInstance = mockSongCVC()
                    let searchTerm = "Rock"
                    let result = myClassInstance.mockSetSearchTermBySong(searchTerm: searchTerm)
                    expect(result).to(equal("Rock"))
                }
            }
        }
    }
}
