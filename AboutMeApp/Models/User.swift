//
//  User.swift
//  AboutMeApp
//
//  Created by Darina Kirilenko on 14.02.2024.
//

struct User {
    let userName: String
    let password: String
    
    static func getUserData() -> User {
        User(
            userName: "1",
            password: "1"
        )
    }
}

