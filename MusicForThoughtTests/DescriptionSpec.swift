import Quick
import Nimble
@testable import MusicForThought

class DescriptionSpec: QuickSpec{
    override func spec() {
        describe("DescriptionVM"){
            class mockDescriptionTVC:DescriptionTVC{
                override func mockSearchTermBySongID(searchTerm:Double)->Double{
                    let descriptionVM = DescriptionVM()
                    descriptionVM.searchTermBySongID = searchTerm
                    return descriptionVM.searchTermBySongID!
                }
            }
            context("search in TVC is equal to Rock"){
                it("search term should be equal to Rock"){
                    let myClassInstance = mockDescriptionTVC()
                    let searchTerm = 22.0
                    let result = myClassInstance.mockSearchTermBySongID(searchTerm: searchTerm)
                    expect(result).to(equal(22.0))
                }
            }
        }
    }
}
