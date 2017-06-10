import Quick
import Nimble
@testable import MusicForThought

class AdapterSpec: QuickSpec{
    override func spec() {
        var searchAdapter:SearchAdapter?
        beforeEach {
             searchAdapter = SearchAdapter()
        }
        describe("Search Categories Method"){
            it("should return the number of cateogies "){
                let categorysIds = ["1","2", "3"]
                let categories = searchAdapter?.searchCategories()
                expect(categories?.count).to(equal(categorysIds.count))
            }
        }
        describe("Search Genres"){
            context("when there are two genres"){
            it("should return the number of ids associated with that genre"){
            let genres = searchAdapter?.searchGenres(genreID: ["1", "2"])
                expect(genres?.count).to(equal(2))
                }
            
            }
        }
        describe("Search Songs"){
            context("When there are two songs associated with the rap genre"){
                it("should return two songs"){
             let songs =   searchAdapter?.createSongs([1,2])
                expect(songs?.count).to(equal(2))
                }
            }
        }
        
    }
}

