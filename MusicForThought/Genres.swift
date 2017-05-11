
import Foundation
class Genres{
    var genres = ["Search All Genres":"1","Rap":"2", "Rock":"3"]
    
    func getGenres()->Array<String>{
        return Array(genres.keys)
    }

}
