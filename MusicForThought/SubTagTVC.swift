import UIKit

class SubTagTVC: UITableViewController {
    var subTagVM:SubTagVM?
    var searchTerm = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subTagVM = SubTagVM()
        subTagVM?.searchTermByCategory = searchTerm
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (subTagVM?.genres.count)!
    }
    
    private struct Storyboard{
        static let TagCellIndetifier = "SubTagCell"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.TagCellIndetifier, for: indexPath)
        let genre = subTagVM?.genres[indexPath.row]
        cell.textLabel?.text = genre?.type
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SongSegue" {
            if let songCVC = segue.destination as? SongCVC {
                let path = self.tableView.indexPathForSelectedRow!
                let genre = subTagVM?.genres[path.row]
                songCVC.title = genre?.type
                songCVC.searchTerm = (genre?.type!)!
            }
        }
    }
    
    func mockSetSearchTermByCategory(searchTerm:String)->String{return ""}
}
