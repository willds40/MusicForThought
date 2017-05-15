import Foundation

class SongsVM{
    var searchAdapter = SearchAdapter()
    var songs = [[String:Any]]()
    var searchTermByGenre = ""{
        didSet{
         songs = Songs().getSongs(searchTermByGenre: searchTermByGenre)
        }
    }
   }
