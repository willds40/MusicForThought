import UIKit

class DescriptionTVC: UITableViewController {
    let descriptionVM = DescriptionVM()
    var searchTermBySongId:Double?
    var songsToGetDescriptionsOf = 0
    var song:Song?{
        didSet{
        descriptionVM.addSong(song!)
        songsToGetDescriptionsOf += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return descriptionVM.sectionHeaders.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsToGetDescriptionsOf
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
}
