import Quick
import Nimble
@testable import MusicForThought

class TagSpec: QuickSpec{
    override func spec() {
        let tagVM = TagVM()
        describe ("TagVM categories"){
            let serchAdapter = SearchAdapter()
            let category1 = MusicForThought.Category(type: "Category1", genreIDs:["1"])
             let category2 = MusicForThought.Category(type: "Category2", genreIDs:["2"])
             let category3 = MusicForThought.Category(type: "Category3", genreIDs:["3"])
            var categories:[MusicForThought.Category] = [category1,category2,category3]
            it("should have an array with the same amount of categories as retrieved from the Search Adapter"){
                serchAdapter.searchCategories(handler: { resposne in
                    categories = resposne
                })
               expect(tagVM.tags.count).toEventually(equal(categories.count))
            }
        }
    }
}
