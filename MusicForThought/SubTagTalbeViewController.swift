import UIKit

class SubTagTVC: UITableViewController {
    var subTagVM:SubTagVM?
    var genre:Genre?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
        let _ = subTagVM?.genres.producer.startWithValues { _ in
            self.tableView.reloadData()
        }
    }
    
    private func setupViewModel(){
        subTagVM = SubTagVM()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ((subTagVM?.genres.value.count))!
    }
    
    private struct Storyboard{
        static let TagCellIndetifier = "SubTagCell"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.TagCellIndetifier, for: indexPath)
        let genre = subTagVM?.genres.value[indexPath.row]
        cell.textLabel?.text = genre?.name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SongSegue"{
            let songCVC = segue.destination as? SongCVC
            if self.tableView.indexPathForSelectedRow != nil  {
                genre = subTagVM?.genres.value[self.tableView.indexPathForSelectedRow!.row]
            }
            setSongsAssociatedWithTheGenre(genre!, songCVC!)
        }
        }
    }

    private func setSongsAssociatedWithTheGenre(_ genre:Genre,_ songCVC:SongCVC){
    songCVC.title = genre.name
    if genre.songIDs?.count != nil {
        songCVC.songsAssociatedWithGenre = (genre.songIDs)!
    }
    
}
