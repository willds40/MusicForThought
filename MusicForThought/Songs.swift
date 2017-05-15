class Songs{
    
    func getSongs(searchTermByGenre:String)->[[String:Any]]{
        var allSongs = [[String:Any]]()
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
    
       
    
    
    //Rap Songs
    var encore = ["id":1.0, "name":"Encore", "Description":"Do you want more?", "Cover Art":"www.IOwnBrooklyn.com"] as [String : Any]
    var workoutPlan = ["id":2.0, "name":"Wokout Plan", "Description":"Get Fit On Kayne's plan", "Cover Art": "www.thisiskayne.com"] as [String : Any]
    
    func getRapSongs()->[[String:Any]]{
        let rapSongs = [encore,workoutPlan]
        return rapSongs
    }
    
    //Rock Songs
    var help = ["id":3.0, "name":"Help!", "Description":"I need somebody, pleaseeee...", "Cover Art":"www.BeatlesForever.com"] as [String : Any]
    
    var imagine = ["id":4.0, "name":"Imagine", "Description":"World Peace", "Cover Art":"www.IAmStillAlive.com"] as [String : Any]
    
    func getRockSongs()->[[String:Any]]{
        let rockSongs = [help,imagine]
        return rockSongs
    }
    func getAllSongs()->[[String:Any]]{
        let allSongs = [help,imagine,workoutPlan,encore]
        return allSongs
    }
}
