import Quick
import Nimble
import SwiftyJSON
@testable import MusicForThought
class ApiSpec :QuickSpec{
    override func spec() {
         var api:API!
            beforeEach {
                api = API()
            }
         describe("search request function"){
            context("endpoint is string"){
                it("url should equal a string'"){
            _ = api?.dummySearchRequestIfAPIExisted(forPath: "test")
                    expect(api?.url).to(equal("test"))
                }
            }
        }
    }
}
