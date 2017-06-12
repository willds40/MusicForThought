import Quick
import Nimble
@testable import MusicForThought

class DescriptionTVCSpec: QuickSpec{
    override func spec() {
        describe("DescriptionTVC"){
            var descriptionTVC:DescriptionTVC!
            beforeEach {
                let storyboard = UIStoryboard(name:"Main", bundle:nil)
                descriptionTVC = storyboard.instantiateViewController(withIdentifier: "DescriptionTVC") as! DescriptionTVC
                let _ = descriptionTVC.view
                descriptionTVC.song = Song(songTitle: "Title", id: "1", description: "Description", coverArt: "Art")
            }
            it(" should be loaded and not be nil"){
                expect(descriptionTVC.view).toNot(beNil())
            }
        }
    }
}
