import Quick
import Nimble
import SwiftyJSON
import Alamofire

@testable import MusicForThought
class ApiSpec :QuickSpec{
    override func spec() {
        var APImodel: API?
        
        beforeEach {
            APImodel = API()
        }
        
        describe(".fetchData") {
            context("when a request is made for categories") {
                it("returns json") {
                    var jsonData: JSON = ""
                    APImodel?.retrieveData(forPath: "categories") { response in
                        jsonData = response
                    }
                    expect(jsonData).to(beAKindOf(JSON.self))
                }
            }
            context("when a request is made for genres") {
                it("returns json") {
                    var jsonData: JSON = ""
                    APImodel?.retrieveData(forPath: "genres") { response in
                        jsonData = response
                    }
                    expect(jsonData).to(beAKindOf(JSON.self))
                }
                
            }
            context("when a request is made for songs") {
                it("returns json") {
                    var jsonData: JSON = ""
                    APImodel?.retrieveData(forPath: "songs") { response in
                        jsonData = response
                    }
                    expect(jsonData).to(beAKindOf(JSON.self))
                }
                
            }
            
        }
    }
}
