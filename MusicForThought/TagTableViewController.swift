import UIKit

class TagTVC: UITableViewController {
    var tagVM:TagVM?
    var category:Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
        tagVM?.reloadTableView = { viewModel in
            self.tableView.reloadData()
        }
    }
    
    private  func setupViewModel(){
        tagVM = TagVM()
        tagVM?.tags = []
         self.title = tagVM?.title
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (tagVM?.tags.count)!
    }
    
    private struct Storyboard{
        static let TagCellIndetifier = "TagCell"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.TagCellIndetifier, for: indexPath)
        let category = tagVM?.tags[indexPath.row]
        cell.textLabel?.text = category?.type
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SubTagSegue" {
            if let subTagTVC = segue.destination as? SubTagTVC {
                if self.tableView.indexPathForSelectedRow != nil{
                let path = self.tableView.indexPathForSelectedRow!
                    category = self.tagVM?.tags[path.row]
                }
                subTagTVC.title = category?.type
            }
        }
    }
}


