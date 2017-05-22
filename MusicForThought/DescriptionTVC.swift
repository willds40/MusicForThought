import UIKit

class DescriptionTVC: UITableViewController {
    let descriptionVM = DescriptionVM()
    var searchTermBySongId:Double?
    var song:Song?
    
    override func viewDidLoad() {
        descriptionVM.addSong(song!)
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return descriptionVM.sectionHeaders[section]
    }
    
    
    private struct Storyboard{
        static let TagCellIndetifier = "DescriptionCell"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.TagCellIndetifier, for: indexPath)
        let song  = descriptionVM.songLib[indexPath.section]
        cell.textLabel?.text = song.description
        return cell
    }

    func mockSearchTermBySongID(searchTerm:Double)->Double{return 0.0}
}
