import Quick
import Nimble
@testable import MusicForThought

class ApiSpec :QuickSpec{
    override func spec() {
        describe("search request function"){
            var api:API!
            beforeEach {
                api = API()
            }
            context("endpoint is string"){
                it("url should equal a string'"){
                    api?.searchReguest(endpoint: "test", endPontID: 1, endPointID2: 2)
                    expect(api?.url).to(equal("test"))
                }
                it("url should be equal to id1 if id 2 is nil and url is nil"){
                    api?.searchReguest(endpoint: nil, endPontID: 1, endPointID2: nil)
                    expect(api?.url).to(equal( "\(1.0)"))
                }
                it("url should be equal to id1 and id2 if both are non nil and url is nil"){
                    api?.searchReguest(endpoint: nil, endPontID: 1, endPointID2: 2)
                    expect(api?.url).to(equal( "\(1.0)" + "+" + "\(2.0)"))
                }
                
            }
        }
        
        
        
        
    }
}
