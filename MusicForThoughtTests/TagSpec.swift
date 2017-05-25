import Quick
import Nimble
@testable import MusicForThought

class TagSpec: QuickSpec{
    override func spec() {
        let tagVM = TagVM()
        describe ("TagVM"){
            let categories = CategoriesLibrary()
            it("should have an array with the same amount as in the catories library"){
                expect(tagVM.tags.count).to(equal(categories.getCatLib().count))
            }
        }
    }
}
