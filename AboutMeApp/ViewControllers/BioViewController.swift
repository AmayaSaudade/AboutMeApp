//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Darina Kirilenko on 14.02.2024.
//

import UIKit

final class BioViewController: UIViewController {

    
    private let primaryColor = UIColor(
        red: 100/255,
        green: 150/255,
        blue: 200/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 200/255,
        green: 120/255,
        blue: 100/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}
