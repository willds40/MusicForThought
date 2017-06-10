class SongLibrary{
    var songLib = [Song]()
    var encore = Song(songTitle: "Encore", id: "1", description: "Do You Want More", coverArt: "www.IOwnBrooklyn.com")
    
    var workoutPlan = Song(songTitle: "Kayne's Workout Plan", id: "2.0", description: "Get Fit On Kayne's plan", coverArt: "www.IAmNotCrazyJustAGenius.com")
    
    var help = Song(songTitle: "help", id: "3.0", description: "I Need Someone", coverArt: "www.BeatlesForever.com" )
    
    var imagine = Song(songTitle: "Imagine", id: "4.0", description: "World Peace", coverArt:"I am still Alive")
    
}

/*
    func getSongLib(song:Song?)->[Song]{
        if song != nil{
            songLib.append(song!)
        }
        songLib.append(encore)
        songLib.append(workoutPlan)
        songLib.append(help)
        songLib.append(imagine)
        return songLib
    }
}
*/

