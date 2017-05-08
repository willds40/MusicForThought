import Quick
import Nimble
@testable import MusicForThought

class SubTagTVCSpec: QuickSpec{
    override func spec() {
        describe("SubTagTVC"){
            var subTagTVC:SubTagTVC!
            beforeEach {
                let storyboard = UIStoryboard(name:"Main", bundle:nil)
                subTagTVC = storyboard.instantiateViewController(withIdentifier: "SubTagTVC") as! SubTagTVC
                let _ = subTagTVC.view
            }
            it(" should be loaded and not be nil"){
                expect(subTagTVC.view).toNot(beNil())
            }
        }
    }
}
