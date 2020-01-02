//
//  Person.swift
//  AboutTheTeam
//
//  Created by Chris Anderson on 1/2/20.
//  Copyright © 2020 Aaron Shackelford. All rights reserved.
//

import UIKit

class Person: Codable {
    let firstName: String
    let lastName: String
    let role: String
    let currentResidence: String
    let bio: String
    let skills: [String]
    let experience: [String]
    let email: String
    let phone: String
    let profileImage: String
    
    init (firstName: String, lastName: String, role: String, currentResidence: String, bio: String, skills: [String] = [], experience: [String] = [], email: String, phone: String, profileImage: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.role = role
        self.currentResidence = currentResidence
        self.bio = bio
        self.skills = skills
        self.experience = experience
        self.email = email
        self.phone = phone
        self.profileImage = profileImage
    }
    
    
}
