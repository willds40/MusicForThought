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
                subTagTVC.genreID = ["1", "2", "3"]
            }
            it(" should be loaded and not be nil"){
                expect(subTagTVC.view).toNot(beNil())
            }
            describe ("segue"){
                let subTagTVC = SubTagTVC()
                let genre = Genre("Rap",id: "1",songIDs: [1,2])
                subTagTVC.genre = genre
                it("SongCVC genre should be the same as genre of SubTssgTVC"){
                    let songCVC = SongCVC()
                    subTagTVC.prepare(for: UIStoryboardSegue.init(identifier: "SongSegue", source: subTagTVC, destination: songCVC), sender: subTagTVC)
                    expect(songCVC.songsAssociatedWithGenre).to(contain([1,2]))
                }
            }
            describe("rows in section"){
                it ("should equal the number of genres in genre view model"){
                expect(subTagTVC.tableView(subTagTVC.view as! UITableView, numberOfRowsInSection: 1)).to(equal(subTagTVC.genreID?.count))
                }
            }
        }
    }
}
