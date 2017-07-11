import Quick
import Nimble
@testable import MusicForThought

class SubTagSpec: QuickSpec{
    override func spec() {
        let subTagVM = SubTagVM()
        describe ("SubTagVM genres"){
            let serchAdapter = SearchAdapter()
            let genre1 = Genre("genre1", id: "1", songIDs: [1])
            let genre2 = Genre("genre2", id: "2", songIDs: [2])
            let genre3 = Genre("genre3", id: "3", songIDs: [3])
            var genres:[Genre] = [genre1,genre2,genre3]
            it("should have an array with the same amount of genres as retrieved from the Search Adapter"){
                serchAdapter.searchGenres(handler: { resposne in
                    genres = resposne
                })
            expect(subTagVM.genres.value.count).toEventually(equal(genres.count))
            }
        }
        
    }
}





