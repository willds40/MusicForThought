import Quick
import Nimble
@testable import MusicForThought

class TagTVCSpec: QuickSpec{
    override func spec() {
        describe("TagTVC"){
            var tagTVC:TagTVC!
            beforeEach {
                let storyboard = UIStoryboard(name:"Main", bundle:nil)
                tagTVC = storyboard.instantiateViewController(withIdentifier: "TagTVC") as! TagTVC
                let _ = tagTVC.view
            }
            it(" should be loaded and not be nil"){
                expect(tagTVC.view).toNot(beNil())
            }
        }
   
    }
}

