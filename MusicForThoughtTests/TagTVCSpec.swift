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
            describe("number of sections"){
                it ("should be equal to 1"){
                    expect(tagTVC.numberOfSections(in: tagTVC.view as! UITableView)).to(equal(1))
                }
            }
            describe("number of rows in the section"){
                context("when there is one section"){
                    let tagVM = TagVM()
                    
                    it("should equal the count of the tags array in tags vm"){
                        expect(tagTVC.tableView(tagTVC.view as! UITableView, numberOfRowsInSection: 1)).toEventually(equal(tagVM.tags.value.count))
                    }
                }
            }
        }
    }
}


