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
                    it("should equal the count of the tags array in tags vm"){
                        let tagVM = TagVM()
                        expect(tagTVC.tableView(tagTVC.view as! UITableView, numberOfRowsInSection: 1)).to(equal(tagVM.tags.count))
                    }
                }
            }
            describe ("searchTerm of SubtagTVC"){
            let subTagTVC = SubTagTVC()
                it("should be the same as category of TagTVC"){
                tagTVC.category = Category(type: "Artist")
                tagTVC.prepare(for: UIStoryboardSegue.init(identifier: "SubTagSegue", source: tagTVC, destination: subTagTVC), sender: tagTVC)
                expect(subTagTVC.searchTerm).to(equal("Artist"))
                }
            }
            
        }
    }
}


