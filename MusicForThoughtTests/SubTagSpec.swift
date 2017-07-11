import Quick
import Nimble
@testable import MusicForThought

class SubTagSpec: QuickSpec{
    override func spec() {
        let subTagVM = SubTagVM()
        describe ("SubTagVM genres"){
            let serchAdapter = SearchAdapter()
            var genres:[Genre] = [Genre("genre1", id: "1", songIDs: [1]),Genre("genre2", id: "2", songIDs: [2]),Genre("genre3", id: "3", songIDs: [3])]
            
            it("should have an array with the same amount of genres as retrieved from the Search Adapter"){
                serchAdapter.searchGenres(handler: { resposne in
                    genres = resposne
                })
            expect(subTagVM.genres.value.count).toEventually(equal(genres.count))
            }
        }
        
    }
}





