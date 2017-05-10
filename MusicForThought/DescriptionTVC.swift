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
    override func viewDidLoad() {
        super.viewDidLoad()
        let descriptionVM = DescriptionVM()
        descriptionVM.searchTermBySongID = searchTermBySongId
    }
    
   func mockSearchTermBySongID(searchTerm:Double)->Double{return 0.0}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    
}
