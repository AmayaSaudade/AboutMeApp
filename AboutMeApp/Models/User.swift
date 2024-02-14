//
//  User.swift
//  AboutMeApp
//
//  Created by Darina Kirilenko on 14.02.2024.
//

struct User {
    let userName: String
    let password: String
    
    let nickName: String
    let name: String
    let currentLocation: String
    let department: String
    let position: String
    
    let bioInfo: String
    
    static func getUserData() -> User {
        User(
            userName: "1",
            password: "1",
            nickName: "Amaya",
            name: "Darina Kirilenko",
            currentLocation: "Arkhangelsk",
            department: "Information security",
            position: "ML operator",
            bioInfo: "About me"
        )
    }
}


