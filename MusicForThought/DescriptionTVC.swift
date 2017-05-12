//
//  DescriptionTVC.swift
//  MusicForThought
//
//  Created by Will Devon-Sand on 5/10/17.
//  Copyright © 2017 Will Devon-Sand. All rights reserved.
//

import UIKit

class DescriptionTVC: UITableViewController {
    var searchTermBySongId:Double?
    var song = [String:Any]()
    var songDescriptions = [Any]()
    var sectionTitles: [String]?
    override func viewDidLoad() {
        super.viewDidLoad()
        songDescriptions = Array(song.values)
        let descriptionVM = DescriptionVM()
        descriptionVM.searchTermBySongID = searchTermBySongId
       sectionTitles = Array(song.keys)
    }
    
    func mockSearchTermBySongID(searchTerm:Double)->Double{return 0.0}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return songDescriptions.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles?[section]
    }
    private struct Storyboard{
        static let TagCellIndetifier = "DescriptionCell"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.TagCellIndetifier, for: indexPath)
        if ((songDescriptions[indexPath.row] as? String) != nil){
            cell.textLabel?.text = songDescriptions[indexPath.row] as? String
            print(cell.textLabel?.text ?? "default")
        }else{
            cell.textLabel?.text = String(describing: songDescriptions[indexPath.row])
        }
        return cell
    }
    
    
    
}
