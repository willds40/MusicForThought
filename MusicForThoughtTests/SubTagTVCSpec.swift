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
                subTagTVC.searchTerm = "Artist"
            }
            it(" should be loaded and not be nil"){
                expect(subTagTVC.view).toNot(beNil())
            }
            describe("number of rows in the section"){
                context("when there is one section"){
                    it("should equal the count of the genres array in subtags vm"){
                    expect(subTagTVC.tableView(subTagTVC.view as! UITableView, numberOfRowsInSection: 1)).to(equal(3))
                    }
                }
            }
            describe ("searchTerm of SubtagCVC"){
                let subTagTVC = SubTagTVC()
                let genre = Genre("Rap")
                subTagTVC.genre = genre
                it("should be the same as genre of SubTssgTVC"){
                     let songCVC = SongCVC()
                    subTagTVC.prepare(for: UIStoryboardSegue.init(identifier: "SongSegue", source: subTagTVC, destination: songCVC), sender: subTagTVC)
                    expect(songCVC.searchTerm).to(equal("Rap"))
                }
            }
        }
    }
}
