import Quick
import Nimble
@testable import MusicForThought

class SongSpec: QuickSpec{
    override func spec() {
        describe("songVM"){
            class mockSongCVC:SongCVC{
                override func mockSongsAssociatedByGenre(songsAssocaitedByGenre:[Int])->[Int]{
                    let songVM = SongsVM()
                    songVM.songsAsscoaitedWithTheGenre = songsAssocaitedByGenre
                    return songVM.songsAsscoaitedWithTheGenre
                }
            }
            context("ids in SongCVC is equals to the songs associated with Rock"){
                it("songs ids hould be equal to the ids with Rock"){
                    let myClassInstance = mockSongCVC()
                    let songIDS = [3,4]
                    let result = myClassInstance.mockSongsAssociatedByGenre(songsAssocaitedByGenre: songIDS)
                    expect(result).to(contain([3,4]))
                }
            }
        }
    }
}
