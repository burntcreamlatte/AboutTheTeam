//
//  PersonTableViewCell.swift
//  AboutTheTeam
//
//  Created by Aaron Shackelford on 1/2/20.
//  Copyright © 2020 Aaron Shackelford. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    
    //TODO; blocked on model
//    var person: Person? {
//        didSet {
//            updateViews()
//        }
//    }
    
//    func updateViews() {
//        guard let person = person else { return }
//        self.personImageView.image = ""
//    }
}
