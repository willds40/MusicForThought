class Songs{
    func getSongs(searchTermByGenre:String)->[Song]{
        var allSongs = [Song]()
        if (searchTermByGenre == "Rap"){
        allSongs = getRapSongs()
        }
        if(searchTermByGenre == "Rock"){
        allSongs = getRockSongs()
        }
        if (searchTermByGenre == "Search All Genres"){
        allSongs = getAllSongs()
        }
        return allSongs
    }
    
    func getRapSongs()->[Song]{
        let rapSongs = [encore,workoutPlan]
        return rapSongs
    }
    
    func getRockSongs()->[Song]{
        let rockSongs = [help,imagine]
        return rockSongs
    }
    func getAllSongs()->[Song]{
        let allSongs = [help,imagine,workoutPlan,encore]
        return allSongs
    }


    
    //Library
    
    var encore = Song(songTitle: "Encore", id: 1, description: "Do You Want More", coverArt: "www.IOwnBrooklyn.com")
    
    var workoutPlan = Song(songTitle: "Kayne's Workout Plan", id: 2.0, description: "Get Fit On Kayne's plan", coverArt: "www.IAmNotCrazyJustAGenius.com")
    
    var help = Song(songTitle: "help", id: 3.0, description: "I Need Someone", coverArt: "www.BeatlesForever.com")
    
    var imagine = Song(songTitle: "Imagine", id: 4.0, description: "World Peace", coverArt: "www,IAmStillAlive.com")
   }
