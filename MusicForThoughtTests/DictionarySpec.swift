import Quick
import Nimble
@testable import MusicForThought

class DictionarySpec: QuickSpec{
    override func spec() {
        describe("dictionary"){
            context("dictionaries are combined"){
                it("first dictionary contain key of second dictionary"){
                    var firstDictonary = ["Blue":"1", "Green":"2"]
                    let secondDictionary = ["Red":"3"]
                    firstDictonary.merge(dict: secondDictionary)
                expect(firstDictonary.keys).to(contain("Red"))
                }
            
            }
        }
    }
}
