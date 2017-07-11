import Quick
import Nimble
@testable import MusicForThought

class TagSpec: QuickSpec{
    override func spec() {
        let tagVM = TagVM()
        describe ("TagVM categories"){
            let serchAdapter = SearchAdapter()
            var categories:[MusicForThought.Category] = [MusicForThought.Category(type: "Category1"),MusicForThought.Category(type: "Category2"),MusicForThought.Category(type: "Category3")]
            
            it("should have an array with the same amount of categories as retrieved from the Search Adapter"){
                serchAdapter.searchCategories(handler: { resposne in
                    categories = resposne
                })
               expect(tagVM.tags.value.count).toEventually(equal(categories.count))
            }
        }
    }
}
