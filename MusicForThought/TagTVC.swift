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
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
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


