import Quick
import Nimble
@testable import MusicForThought

class SubTagSpec: QuickSpec{
    override func spec() {
        describe("subTagVM"){
            var subTagVM: SubTagVM?
            beforeEach {
                subTagVM = SubTagVM()
            }
            describe("Genres"){
                context("when there are two genre ids"){
                    it("The genre count should be two"){
                        subTagVM?.genreId = ["1,2"]
                        expect(subTagVM?.genres.count).to(equal(2))
                    }
                }
            }
        }
    }
}





