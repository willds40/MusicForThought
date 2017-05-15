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
            }
            it(" should be loaded and not be nil"){
                expect(descriptionTVC.view).toNot(beNil())
            }
            //    describe("title"){
            //    it ("should be equal to the song in songcvc"){
            //    let songCVC = SongVC()
            //    songCVC.songTitle = "Wokroutplan"
            //    expect(tagTVC.numberOfSections(in: tagTVC.view as! UITableView)).to(equal(1))
            //    }
            //    }
        }
    }
}
