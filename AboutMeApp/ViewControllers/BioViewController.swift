//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Darina Kirilenko on 14.02.2024.
//

import UIKit

final class BioViewController: UIViewController {
    
    var info: String!

    
    private let primaryColor = UIColor(
        red: 200/255,
        green: 230/255,
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
    }
}
