import Foundation
import Alamofire

class SongLibrary{
    func getSongs()->Parameters{
        let songs = [
            "1": [
                "name": "Encore",
                "description": "Do You Want More",
                "coverArt": "www.IOwnBrooklyn.com"
            ],
            "2": [
                "name": "Kayne's Workout Plan",
                "description": "Get Fit On Kayne's plan",
                "coverArt": "www.IAmNotCrazyJustAGenius.com"
            ],
            "3": [
                "name": "help",
                "description": "I Need Someone",
                "coverArt": "www.BeatlesForever.com"
            ],
            "4": [
                "name": "Imagine",
                "description": "World Peace",
                "coverArt": "www.IAmStillAlive.com"
            ]
        ]
return songs
    }
}