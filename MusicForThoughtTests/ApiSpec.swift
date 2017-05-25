import Quick
import Nimble
@testable import MusicForThought

class ApiSpec :QuickSpec{
    override func spec() {
        describe("search request function"){
                context("endpoint is string"){
                it("url should equal a string'"){
                let api = API()
                api.searchReguest(endpoint: "test", endPontID: nil, endPointID2: nil)
                expect(api.url).to(equal("test"))
                
                }
            
            }
        }
        
        
        
        
    }
}
