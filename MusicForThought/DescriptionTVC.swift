import UIKit

class DescriptionTVC: UITableViewController {
    let descriptionVM = DescriptionVM()
    var searchTermBySongId:Double?
    var song = [String:Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionVM.song = song
        descriptionVM.searchTermBySongID = searchTermBySongId
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return descriptionVM.songDescription!.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return descriptionVM.songTitles?[section]
    }
    
    private struct Storyboard{
        static let TagCellIndetifier = "DescriptionCell"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.TagCellIndetifier, for: indexPath)
        if ((descriptionVM.songDescription?[indexPath.section] as? String) != nil){
            cell.textLabel?.text = descriptionVM.songDescription?[indexPath.section] as? String
        }else{
            cell.textLabel?.text = String(describing: descriptionVM.songDescription![indexPath.section])
        }
        return cell
    }
    
    func mockSearchTermBySongID(searchTerm:Double)->Double{return 0.0}
}
