import Quick
import Nimble
@testable import MusicForThought

class AdapterSpec: QuickSpec{
    override func spec() {
        describe("adapter"){
            class mockAPI:API{
                override func searchReguest(endpoint:String)->Dictionary<String,String>{
                    result = ["Rock":"1"]
                    return result!
                }
            }
            context("when api search by genre is called"){
                it("should contain an dictionary equal to the restuls fo the API reguest"){
                    let adapter = SearchAdapter()
                    let myClassInstance = mockAPI()
                    adapter.result = myClassInstance.searchReguest(endpoint: "/mockRequest")
                expect(adapter.result.keys).to(contain("Rock"))
                }
            }
        }
    }
}

