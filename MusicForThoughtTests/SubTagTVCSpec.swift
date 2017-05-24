//import Quick
//import Nimble
//@testable import MusicForThought
//
//class SubTagTVCSpec: QuickSpec{
//    override func spec() {
//        fdescribe("SubTagTVC"){
//            var subTagTVC:SubTagTVC!
//            var subTagVM: SubTagVM?
//            beforeEach {
//                let storyboard = UIStoryboard(name:"Main", bundle:nil)
//                subTagTVC = storyboard.instantiateViewController(withIdentifier: "SubTagTVC") as! SubTagTVC
//                let _ = subTagTVC.view
//                subTagVM = SubTagVM()
//                subTagVM?.searchTermByCategory = "Artist"
//            
//            }
//            it(" should be loaded and not be nil"){
//                expect(subTagTVC.view).toNot(beNil())
//            }
//            describe("number of rows in the section"){
//                context("when there is one section"){
//                    it("should equal the count of the genres array in subtags vm"){
//                    expect(subTagTVC.tableView(subTagTVC.view as! UITableView, numberOfRowsInSection: 1)).to(equal(subTagVM?.genres?.count))
//                    }
//                }
//            }
//        }
//    }
//}
