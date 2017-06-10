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
            describe("section headers"){
                it("should be an array with four elements"){
                expect(descriptionVM.sectionHeaders.count).to(equal(4))
                }
            }
        }
    }
}
