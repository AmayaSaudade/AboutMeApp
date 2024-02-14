//
//  File.swift
//  AboutMeApp
//
//  Created by Darina Kirilenko on 14.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    var nickName: String!
    
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
        welcomeLabel.text = "Welcome, \(userName ?? "")!\n My name is \(nickName ?? "")."
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
