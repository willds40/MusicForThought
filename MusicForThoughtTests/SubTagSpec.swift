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
            context("search in TVC is equal to Artist"){
            it("search term should be equal to Artist"){
            let myClassInstance = mockSubTagTVC()
            let searchTerm = "Artist"
           let result = myClassInstance.setSearchTerm(searchTerm: searchTerm)
            expect(result).to(equal("Artist"))
            }
        }
            context("search in TVC is equal to Album"){
                it("search term should be equal to Album"){
                    let myClassInstance = mockSubTagTVC()
                    let searchTerm = "Album"
                    let result = myClassInstance.setSearchTerm(searchTerm: searchTerm)
                    expect(result).to(equal("Album"))
                }
            }
            context("search in TVC is equal to Genre"){
                it("search term should be equal to Genre"){
                    let myClassInstance = mockSubTagTVC()
                    let searchTerm = "Genre"
                    let result = myClassInstance.setSearchTerm(searchTerm: searchTerm)
                    expect(result).to(equal("Genre"))
                }
            }

        }
    }
}

