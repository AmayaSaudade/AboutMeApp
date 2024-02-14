//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Darina Kirilenko on 14.02.2024.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = ""
    private let password = ""
    
    private let userData = User.getUserData()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        tabBarVC?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userData.userName
                welcomeVC.nickName = userData.nickName
            } else if let infoVC = viewController as? InfoViewController {
                infoVC.name = userData.name
                infoVC.nickName = userData.nickName
                infoVC.currentLocation = userData.currentLocation
                infoVC.department = userData.department
                infoVC.posiiton = userData.position
                infoVC.bio = userData.bioInfo
            } else if let bioVC = viewController as? BioViewController {
                bioVC.info = userData.bioInfo
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTextField.text == userData.userName, 
              passwordTextField.text == userData.password
        else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }

    @IBAction func forgotRegicterData(_ sender: UIButton) {
        sender.tag == 0 
            ? showAlert(withTitle: "Oops!", 
                        andMessage: "Your name is \(user)")
            : showAlert(withTitle: "Oops!", 
                        andMessage: "Your password is \(password)")
    }
    
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        completion: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

