import Quick
import Nimble
@testable import MusicForThought

class SubTagSpec: QuickSpec{
    override func spec() {
        describe("subTagVM"){
        class mockSubTagTVC:SubTagTVC{
               override func mockSetSearchTermByCategory(searchTerm:String)->String{
                let subTagVM = SubTagVM()
                subTagVM.searchTermByCategory = searchTerm
                return subTagVM.searchTermByCategory!
                }
            }
            context("search in TVC is equal to Artist"){
            it("search term should be equal to Artist"){
            let myClassInstance = mockSubTagTVC()
            let searchTerm = "Artist"
           let result = myClassInstance.mockSetSearchTermByCategory(searchTerm: searchTerm)
            expect(result).to(equal("Artist"))
            }
        }
            context("search in TVC is equal to Album"){
                it("search term should be equal to Album"){
                    let myClassInstance = mockSubTagTVC()
                    let searchTerm = "Album"
                    let result = myClassInstance.mockSetSearchTermByCategory(searchTerm: searchTerm)
                    expect(result).to(equal("Album"))
                }
            }
            describe("should have an array with six genre elements in in it "){
                let subTagVM = SubTagVM()
                    expect(subTagVM.genres).to(contain("Rap"))
                    expect(subTagVM.genres).to(contain("Rock"))
                    expect(subTagVM.genres).to(contain("Search All Genres"))
                }
            }

        }
    }


