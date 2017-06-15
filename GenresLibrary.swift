import Foundation
import Alamofire
class GenresLibrary{
    func getGenres()-> Parameters {
        let genres:Parameters = ["1": [
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
}
