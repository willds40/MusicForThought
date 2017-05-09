//
//  TagTVC.swift
//  MusicForThought
//
//  Created by Will Devon-Sand on 5/5/17.
//  Copyright © 2017 Will Devon-Sand. All rights reserved.
//

import UIKit

class TagTVC: UITableViewController {
    var tagVM:TagVM?
    var rowTitleSelected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tagVM = TagVM()
        self.title = "FIND MUSIC BY"
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
        cell.textLabel?.text = tagVM?.tags[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SubTagSegue" {
            if let subTagTVC = segue.destination as? SubTagTVC {
                let path = self.tableView.indexPathForSelectedRow!
                subTagTVC.title = self.tagVM?.tags[path.row]
                subTagTVC.searchTerm = (self.tagVM?.tags[path.row])!
                 rowTitleSelected = subTagTVC.searchTerm
            }
        }
        
    }
}


