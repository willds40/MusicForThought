

import UIKit

class SongCVC: UICollectionViewController {
    var songVM:SongsVM?
    var searchTerm = ""
    var selectedRow = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        songVM = SongsVM()
        songVM?.searchTermByGenre = searchTerm
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
        NotificationCenter.default.addObserver(self, selector: #selector(reloadCollectionView), name: NSNotification.Name(rawValue: "reloadCollectionView"), object: nil)
        collectionView?.isUserInteractionEnabled = true
   }
    
    func reloadCollectionView(){
    self.reloadCollectionView()
    }
    
    func mockSearchTermByGenre(searchTerm:String)->String{return ""}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var songID = 0.0
        let song   = songVM?.songs[selectedRow]
        
        if let key = song?.keys.filter({ $0.lowercased().contains("id") }).first, let id = song?[key] {
           songID  = id as! Double
        }
        if segue.identifier == "DescriptionSegue" {
            if let descriptionTVC = segue.destination as? DescriptionTVC {
                descriptionTVC.searchTermBySongId = songID
            }
        }
    }
 
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return (songVM?.songs.count)!
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let borderColor: CGColor! = UIColor.black.cgColor
        let borderWidth: CGFloat = 1
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SongCell",
        for: indexPath) as! SongCell
        cell.layer.borderColor = UIColor.black.cgColor
        cell.backgroundColor = UIColor.white
        let song   = songVM?.songs[indexPath.row]
        if let key = song?.keys.filter({ $0.lowercased().contains("name") }).first, let title = song?[key] {
           cell.songTitleLabel.text = title as? String
        }
        
        let itunesLogo = UIImage(named:"itunes.jpg")
        cell.image.image = itunesLogo
        cell.image.layer.borderWidth = borderWidth
        cell.image.layer.borderColor = borderColor
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedRow = indexPath.row
        self.performSegue(withIdentifier: "DescriptionSegue", sender: self)
    }
    
    
    
//    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: IndexPath) {
//        selectedRow = indexPath.row
//        self.performSegue(withIdentifier: "DescriptionSegue", sender: self)
//    }

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

