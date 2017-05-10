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
        }
    }
}

