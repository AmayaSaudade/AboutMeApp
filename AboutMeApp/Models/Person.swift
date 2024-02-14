//
//  Person.swift
//  AboutMeApp
//
//  Created by Darina Kirilenko on 14.02.2024.
//

struct Person {
    let avatarImageName: String
    
    let nickName: String
    let name: String
    let currentLocation: String
    
    let department: String
    let position: String
    
    let bioInfo: String
    
    static func getPersonalInfo() -> Person {
        Person(
            avatarImageName: "avatar",
            nickName: "Amaya Saudade",
            name: "Darina Kirilenko",
            currentLocation: "Arkhangelsk",
            department: "Information security",
            position: "ML operator",
            bioInfo: "About me"
        )
    }
}


