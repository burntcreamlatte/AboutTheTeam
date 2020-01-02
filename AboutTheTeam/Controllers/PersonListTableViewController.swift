//
//  PersonListTableViewController.swift
//  AboutTheTeam
//
//  Created by tyson ericksen on 1/2/20.
//  Copyright © 2020 Aaron Shackelford. All rights reserved.
//

import UIKit

class PersonListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source
    //todo
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return PersonController.shared.groupArray.count
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        
        return cell
    }
    
    // MARK: - Navigation
    //todo
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "toPersonDetailView" {
//            if let indexPath = tableView.indexPathForSelectedRow {
//                if let destinationVC = segue.destination as? PersonDetailViewController {
//                    let person = PersonController.shared.persons[indexPath.row]
//                    destinationVC.personLandingPad = person
//                }
//            }
//        }
//    }
}
