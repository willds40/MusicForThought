import Quick
import Nimble
@testable import MusicForThought

class SubTagSpec: QuickSpec{
    override func spec() {
        describe("subTagVM"){
        class mockSubTagTVC:SubTagTVC{
               override func setSearchTerm(searchTerm:String)->String{
                let subTagVM = SubTagVM()
                subTagVM.searchTerm = searchTerm
                return subTagVM.searchTerm!
                }
            }
            it("search term should be equal to Artist"){
            let myClassInstance = mockSubTagTVC()
            let searchTerm = "Artist"
           let result = myClassInstance.setSearchTerm(searchTerm: searchTerm)
            expect(result).to(equal("Artist"))
            }
        }
    }
}

