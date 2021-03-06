import Quick
import Nimble
@testable import MusicForThought

class SongCVCCSpec: QuickSpec{
    override func spec() {
        describe("SongCVC"){
            var songCVC:SongCVC!
            beforeEach {
                let storyboard = UIStoryboard(name:"Main", bundle:nil)
                songCVC = storyboard.instantiateViewController(withIdentifier: "SongCVC") as! SongCVC
                let _ = songCVC.view
            }
            it(" should be loaded and not be nil"){
                expect(songCVC.view).toNot(beNil())
            }
            
            describe ("segue"){
            it("song of the destinationTVC should be the same as SongCVC"){
                let song = Song(songTitle: "Test", id: "2.0", description: "Test", coverArt: "Test")
                songCVC.song = song
                let descriptionTVC = DescriptionTVC()
                let songVM = SongsVM()
                songVM.songs.value.append(song)
                    songCVC.prepare(for: UIStoryboardSegue.init(identifier: "DescriptionSegue", source: songCVC, destination: descriptionTVC), sender: songCVC)
                    
                    expect(descriptionTVC.song).to(be(song))
                }
            }

        }
    }
}

