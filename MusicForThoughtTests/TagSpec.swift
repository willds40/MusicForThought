import Quick
import Nimble
@testable import MusicForThought

class TagSpec: QuickSpec{
    override func spec() {
        let tagVM = TagVM()
        describe ("TagVM"){
            let serchAdapter = SearchAdapter()
            it("should have an array with the same amount as retrieved from the Search Adapter"){
                expect(tagVM.tags.count).to(equal(serchAdapter.createCategories()?.count))
            }
        }
    }
}
