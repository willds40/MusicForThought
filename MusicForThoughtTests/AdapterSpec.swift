import Quick
import Nimble
@testable import MusicForThought

class AdapterSpec: QuickSpec{
    override func spec() {
        var searchAdapter:SearchAdapter?
        beforeEach {
            searchAdapter = SearchAdapter()
        }
        
        describe("search categories"){
            it("returns a collection of cateogories"){
                var categories:[MusicForThought.Category] = []
                searchAdapter?.searchCategories(handler: { response in
                    categories = response
                })
                expect(categories.count).toEventually(equal(3))
            }
        }
        describe("search genres"){
            it("returns a collection of genress"){
                var genres:[Genre] = []
                searchAdapter?.searchGenres(handler: { response in
                    genres = response
                })
                expect(genres.count).toEventually(equal(3))
            }
        }
        describe("search songs"){
            it("returns a collection of genress"){
                var genres:[Song] = []
                searchAdapter?.searchSongs([1,2],handler: { response in
                    genres = response
                })
                expect(genres.count).toEventually(equal(2))
            }
        }

    }
}


