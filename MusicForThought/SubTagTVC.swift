//
//  SubTagTVC.swift
//  MusicForThought
//
//  Created by Will Devon-Sand on 5/5/17.
//  Copyright © 2017 Will Devon-Sand. All rights reserved.
//

import UIKit

class SubTagTVC: UITableViewController {
    var subTagVM:SubTagVM?
    var searchTerm = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        subTagVM = SubTagVM()
        subTagVM?.searchTermByGenre = searchTerm
        }
    
    func mockSetSearchTermByGenre(searchTerm:String)->String{return ""}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (subTagVM?.genres.count)! 
    }

    private struct Storyboard{
        static let TagCellIndetifier = "SubTagCell"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.TagCellIndetifier, for: indexPath)
        cell.textLabel?.text = subTagVM?.genres[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Choose A Genre"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
