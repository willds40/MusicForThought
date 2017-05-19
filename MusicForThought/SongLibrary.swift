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
    

    
//    
//    func convertToJson(){
//        do {
//            
//            //Convert to Data
//            let jsonData = try JSONSerialization.data(withJSONObject: songLib, options: JSONSerialization.WritingOptions.prettyPrinted)
//            
//            //Convert back to string. Usually only do this for debugging
//            if let JSONString = String(data: jsonData, encoding: String.Encoding.utf8) {
//                print(JSONString)
//            }
//            
//            //In production, you usually want to try and cast as the root data structure. Here we are casting as a dictionary. If the root object is an array cast as [Any].
//            var json = try JSONSerialization.jsonObject(with: jsonData, options: JSONSerialization.ReadingOptions.mutableContainers) as? [String: Any]
//            
//            
//        } catch {
//            print(error.description)
//        }
//        
//        
//    }
}


