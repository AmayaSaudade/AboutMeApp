//
//  infoViewController.swift
//  AboutMeApp
//
//  Created by Darina Kirilenko on 14.02.2024.
//

import UIKit

final class InfoViewController: UIViewController {
    
    @IBOutlet var avatarImageView: UIImageView!
    
    @IBOutlet var nickNameLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var currentLocationLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    
    var nickName: String!
    var name: String!
    var currentLocation: String!
    var department: String!
    var posiiton: String!
    var bio: String!
    
    private let primaryColor = UIColor(
        red: 173/255,
        green: 216/255,
        blue: 230/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 216/255,
        green: 191/255,
        blue: 216/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        avatarImageView.layer.cornerRadius = avatarImageView.frame.width / 2
        setProfileInfo()
    }
    
    private func setProfileInfo() {
        tabBarItem.title = nickName
        nickNameLabel.text = nickName
        nameLabel.text = name
        currentLocationLabel.text = currentLocation
        departmentLabel.text = department
        positionLabel.text = posiiton
        
    }
}
