

import UIKit

class SongCVC: UICollectionViewController {
    var songVM:SongsVM?
    var searchTerm = ""
    var selectedRow = 0
    var songTitle = ""
    var songID = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        songVM = SongsVM()
        songVM?.searchTermByGenre = searchTerm
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
        collectionView?.isUserInteractionEnabled = true
   }

    func mockSearchTermByGenre(searchTerm:String)->String{return ""}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let song   = songVM?.songs[selectedRow]
       songID = (songVM?.getSongByID(song!))!
        
        
        if let key = song?.keys.filter({ $0.lowercased().contains("name") }).first, let name = song?[key] {
            songTitle  = name as! String
        }
        if segue.identifier == "DescriptionSegue" {
            if let descriptionTVC = segue.destination as? DescriptionTVC {
                descriptionTVC.searchTermBySongId = songID
                descriptionTVC.title = songTitle
                descriptionTVC.song = song!
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
}

