import Quick
import Nimble
@testable import MusicForThought

class DescriptionTVCSpec: QuickSpec{
    override func spec() {
        describe("DescriptionTVC"){
            var descriptionTVC:DescriptionTVC!
            beforeEach {
                let storyboard = UIStoryboard(name:"Main", bundle:nil)
                descriptionTVC = storyboard.instantiateViewController(withIdentifier: "DescriptionTVC") as! DescriptionTVC
                let _ = descriptionTVC.view
            }
            it(" should be loaded and not be nil"){
                expect(descriptionTVC.view).toNot(beNil())
            }
            describe("title"){
                it("should be equal to the song that was selectd in songCVC"){
                    let songCVC = SongCVC()
                    songCVC.songTitle = "Workout Plan"
                    
                    expect(descriptionTVC.title).to(equal("Workout Plan"))
                    
                }
            }
            
        }
    }
}

