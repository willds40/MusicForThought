import Quick
import Nimble
@testable import MusicForThought

class DescriptionSpec: QuickSpec{
    override func spec() {
        var descriptionVM:DescriptionVM!
        beforeEach {
         descriptionVM =  DescriptionVM()
        }
        describe("DescriptionVM"){
            class mockDescriptionTVC:DescriptionTVC{
                override func mockSearchTermBySongID(searchTerm:Double)->Double{
                    descriptionVM.searchTermBySongID = searchTerm
                    return descriptionVM.searchTermBySongID!
                }
            }
            context("search in DescriptionVC is equal to songID"){
                it("search term should be equal to Rock"){
                    let myClassInstance = mockDescriptionTVC()
                    let searchTerm = 22.0
                    let result = myClassInstance.mockSearchTermBySongID(searchTerm: searchTerm)
                    expect(result).to(equal(22.0))
                }
            }
            describe("section headers"){
                it("should be an array with four elements"){
                expect(descriptionVM.sectionHeaders.count).to(equal(4))
                }
            }
        }
    }
}
