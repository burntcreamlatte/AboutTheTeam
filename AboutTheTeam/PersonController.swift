//
//  PersonController.swift
//  AboutTheTeam
//
//  Created by Chris Anderson on 1/2/20.
//  Copyright © 2020 Aaron Shackelford. All rights reserved.
//

import Foundation

class PersonController {
    
    static var shared = PersonController()
    
    var groupArray: [Person] = []
    
    let karen = Person(firstName: "Karen", lastName: "Clarke", role: "Quality Assurance", currentResidence: "Eagle Mountain, Utah", bio: "I am from Emery County, Utah. I love the outdoors.", skills: ["Detail Oriented"], experience: ["MSR for Mountain America", "CSR @General Dynamics"], email: "karcla@outlook.com", phone: "801-414-5841", profileImage: "")
    let tyson = Person(firstName: "Tyson", lastName: "Erickson", role: "IOS Developer", currentResidence: "Syracuse, Utah", bio: "Grumpy old man!", skills: ["IOS Developer", "Hulking Out"], experience: ["Sales", "Marketing"], email: "Bob@gmail.com", phone: "123-456-7890", profileImage: "")
    let bailee = Person(firstName: "Bailee", lastName: "Ewel", role: "UX Design", currentResidence: "Lehi, Utah", bio: "I am from Utah, spent a lot of time outdoors in AK. Graduated with undergrad in Graphic Design, and Dev Mountain for UX Design", skills: ["Sketch", "Principle", "Invision", "Illustrator", "Indesign", "Photoshop"], experience: ["Bootcamp @DevMountain", "Church and State Graphic Design Intern", "Kone Company Manager"], email: "bailieanndesign@gmail.com", phone: "801-678-1096", profileImage: "")
    let aaron = Person(firstName: "Aaron", lastName: "Shackelford", role: "IOS Developer", currentResidence: "Seattle, Washington", bio: "A stereotypical coffee-loving Seattlite. Former Apple employee in the support industry. Coming to Lehi to learn iOS developement.", skills: ["Xcode", "Swift", "Obj-C", "Scrum", "MVC"], experience: ["Full-time student developer @DevMountain", "Tech Specialist @ Apple"], email: "burntcreamlatte@icloud.com", phone: "425-435-6951", profileImage: "")
    let caleb = Person(firstName: "Caleb", lastName: "Herrera", role: "UX Design", currentResidence: "West Jordan", bio: "Currently enrolled @DevMountain in Lehi", skills: ["Sketch", "Adobe XD", "Principle", "Invision"], experience: ["Bootcamp @ DevMountain"], email: "calebcherrera801@gmail.com", phone: "801-638-8803", profileImage: "")
    let praneet = Person(firstName: "Praneet", lastName: "Goindi", role: "UX Design", currentResidence: "Lehi, Utah", bio: "Born and raised in India, love being around people and traveling, worked in a lot of different fields like banking and aviation", skills: ["Sketch", "Principle", "Invision", "XD Adobe"], experience: ["Flight Attendant", "Risk Analyst", "Boot Camp @DevMountain"], email: "goindipraneet@gmail.com", phone: "424-527-4165", profileImage: "")
    let chris = Person(firstName: "Chris", lastName: "Anderson", role: "IOS Developer", currentResidence: "Dallas, Texas", bio: "That guy, who did that thing.", skills: ["Ninja", "Lion Wrangler", "Dinosaur Expert"], experience: ["A lot"], email: "thatguy@gmail.com", phone: "123-578-0000", profileImage: "")
    
    // MARK: - Persistence
    
    // Get the URL where we are saving our data.
    func fileURL() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = paths[0]
        let filename = "AboutTheTeam.json"
        let fullURL = documentDirectory.appendingPathComponent(filename)
        return fullURL
    }
    
    func saveToPersistence() {
        do {
            let data = try JSONEncoder().encode(groupArray)
            try data.write(to: fileURL())
        } catch {
            print("There was an error saving to the Persistent Store : \(error)")
        }
    }
    
    func loadToPersistence() -> [String] {
        do {
                let data = try Data(contentsOf: fileURL())
                let person = try JSONDecoder().decode([String].self, from: data)
                return person
            } catch {
                print("There was an error loading from the Persistent Store : \(error)")
            }
            return []
    }
}

