import Foundation
import SwiftyJSON

class NoInternetData{
    func getCategories() ->JSON{
        let categories:JSON = [
            "1": "Artists",
            "2": "Albums",
            "3": "Genre"
        ]
        return categories
    }
    
    func getGenres()->JSON{
        let genres:JSON =
            ["1": [
                "name": "Rap",
                "songs": ["1", "2"]
                ],
             
             "2": [
                "name": " Search All Genres",
                "songs": ["1","2","3","4"]
                ],
             
             "3": [
                "name": "Rock",
                "songs": ["3", "4"]
                ]
        ]
        return genres
    }
    func getSongs() ->JSON{
        let songs:JSON = [
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
