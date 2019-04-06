//
//  SplitViewController.swift
//  keboen-course
//
//  Created by riyo maulana on 06/04/19.
//  Copyright © 2019 riyo. All rights reserved.
//

import Foundation
import UIKit

class SplitViewController: UITableViewController {
    let options = ["Option 1", "Option 2", "Option 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "splitOptionCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "splitOptionCell", for: indexPath)
        let option = options[indexPath.row]
        cell.textLabel?.text = option
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showSplitDetail", sender: options[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSplitDetail"{
            let destination = segue.destination as! SplitDetailViewController
            destination.detail = sender as? String
        }
    }
}
