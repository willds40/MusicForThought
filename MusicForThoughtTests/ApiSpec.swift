import Quick
import Nimble
import SwiftyJSON
@testable import MusicForThought
class ApiSpec :QuickSpec{
    var songPath = "/Users/wdsand/Documents/Xcode/MusicForThought/SongData.JSON"
    override func spec() {
        describe("search request function"){
            let api = API ()
            context("endpoint is string"){
                it("url should equal a string'"){
            _ = api.dummySearchRequestIfAPIExisted(forPath: "test")
                    expect(api.url).to(equal("test"))
                }
            }
        }
        describe("retrieve data method"){
            let api = API()
            let jsonObj = api.retrieveData(forPath: self.songPath)
            it ("should return a json object"){
        expect(jsonObj).to(beAKindOf(JSON.self))
            }
        }
    }
}
