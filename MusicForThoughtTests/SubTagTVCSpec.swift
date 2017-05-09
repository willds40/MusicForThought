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
            describe("number of rows in the section"){
                context("when there is one section"){
                    it("should equal the count of the genres array in subtags vm"){
                        let subTagVM = SubTagVM()
                        expect(subTagTVC.tableView(subTagTVC.view as! UITableView, numberOfRowsInSection: 1)).to(equal(subTagVM.genres.count))
                    }
                }
            }
            describe("section header"){
               it("it should read 'Choose A Genre'"){
                expect(subTagTVC.tableView(subTagTVC.view as! UITableView, titleForHeaderInSection: 1)).to(equal("Choose A Genre"))
                }
            }
        }
    }
}
