import Quick
import Nimble
@testable import MusicForThought

class TagSpec: QuickSpec{
    override func spec() {
        let tagVM = TagVM()
        describe ("TagVM"){
            it("should have an array with three tags in it: Artist, Album and Genre"){
                expect(tagVM.tags).to(contain("Artist"))
                expect(tagVM.tags).to(contain("Album"))
                expect(tagVM.tags).to(contain("Genre"))
            }
        }
    }
}
