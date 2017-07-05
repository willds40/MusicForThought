import Foundation
import Alamofire
import SwiftyJSON

class MockData{
    var categories:Parameters
    var genres:Parameters
    var songs:Parameters
    
    init() {
         categories = CategoriesLibrary().getCategories()
         genres = GenresLibrary().getGenres()
         songs = SongLibrary().getSongs()
    }
    
    func getParamters() ->Parameters{
                let parameters: Parameters = [
            "port": 4545,
            "protocol": "http",
            "stubs": [
                [
                    "predicates": [
                        [
                            "equals": [
                                "method": "GET",
                                "path": "/categories"
                            ]
                        ]
                    ],
                    "responses": [
                        [
                            "is": [
                                "body": 
                                    categories
                                ,
                                "headers": [ "content-type": "application/json" ]
                            ]
                        ]
                    ]
                ],
                [
                    "predicates": [
                        [
                            "equals": [
                                "method": "GET",
                                "path": "/genres"
                            ]
                        ]
                    ],
                    "responses": [
                        [
                            "is": [
                                "body": genres,
                                "headers": [ "content-type": "application/json" ]
                            ]
                        ]
                    ]
                ],
                [
                    "predicates": [
                        [
                            "equals": [
                                "method": "GET",
                                "path": "/songs"
                            ]
                        ]
                    ],
                    "responses": [
                        [
                            "is": [
                                "body": songs,
                                "headers": [ "content-type": "application/json" ]
                            ]
                        ]
                    ]
                 ]

            ]
        ]
    
    return parameters
    }
}
