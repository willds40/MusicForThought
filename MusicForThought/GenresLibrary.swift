
import Foundation
class GenresLibrary{
    var searchAllGenres = Genre("Search All Genre")
    var rap = Genre("Rap")
    var rock = Genre("Rock")
    
    func getGenreLib()->[Genre]{
        var genreLib = [Genre]()
        genreLib.append(searchAllGenres)
        genreLib.append(rap)
        genreLib.append(rock)
        return genreLib
    }
}
