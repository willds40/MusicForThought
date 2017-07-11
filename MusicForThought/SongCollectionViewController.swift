import UIKit

class SongCVC: UICollectionViewController {
    var song:Song?
    var songVM:SongsVM?
    var selectedCell:Int?
    var songsAssociatedWithGenre = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupViewModel()
        let _ = songVM?.songs.producer.startWithValues { _ in
            self.collectionView?.reloadData()
        }
    }
    
    private func setupCollectionView(){
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
        collectionView?.isUserInteractionEnabled = true
    }
    
    private func setupViewModel(){
        songVM = SongsVM()
        songVM?.songsAsscoaitedWithTheGenre = songsAssociatedWithGenre
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ((songVM?.songs.value.count))!
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let borderColor: CGColor! = UIColor.black.cgColor
        let borderWidth: CGFloat = 1
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SongCell",
                                                      for: indexPath) as!SongCell
        colorCell(cell: cell, borderColor: borderColor, borderWidth: borderWidth, indexPath: indexPath)
        return cell
    }
    
    private func colorCell(cell: SongCell, borderColor:CGColor, borderWidth: CGFloat, indexPath:IndexPath){
        cell.backgroundColor = UIColor.white
        createCellImage(cell: cell, borderColor: borderColor, borderWith: borderWidth)
        createText(cell: cell, indexPath: indexPath)
    }
    
    private func createText(cell:SongCell, indexPath:IndexPath){
        let song   = songVM?.songs.value[indexPath.row]
        cell.songTitleLabel.text = song?.songTitle

    }
    
    private func createCellImage(cell:SongCell, borderColor:CGColor, borderWith: CGFloat ){
        let itunesLogo = UIImage(named:"itunes.jpg")
        cell.image.image = itunesLogo
        cell.image.layer.borderWidth = borderWith
        cell.image.layer.borderColor = borderColor
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCell = indexPath.row
        self.performSegue(withIdentifier: "DescriptionSegue", sender: selectedCell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DescriptionSegue" {
            if let descriptionTVC = segue.destination as? DescriptionTVC {
                if selectedCell != nil {
                song   = songVM?.songs.value[selectedCell!]
                }
                descriptionTVC.song = song
                
            }
        }
    }
}

