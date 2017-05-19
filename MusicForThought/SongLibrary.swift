class SongLibrary{
    var songLib = [Song]()
    var encore = Song(songTitle: "Encore", id: 1, description: "Do You Want More", coverArt: "www.IOwnBrooklyn.com", genre:"Rap")
    
    var workoutPlan = Song(songTitle: "Kayne's Workout Plan", id: 2.0, description: "Get Fit On Kayne's plan", coverArt: "www.IAmNotCrazyJustAGenius.com",genre:"Rap")
    
    var help = Song(songTitle: "help", id: 3.0, description: "I Need Someone", coverArt: "www.BeatlesForever.com", genre:"Rock")
    
    var imagine = Song(songTitle: "Imagine", id: 4.0, description: "World Peace", coverArt: "www,IAmStillAlive.com",genre:"Rock")
    
    func getSongLib()->[Song]{
        songLib.append(encore)
        songLib.append(workoutPlan)
        songLib.append(help)
        songLib.append(imagine)
        return songLib
    }
}


