//
//  ViewController.swift
//  buoi1-login
//
//  Created by Huy Trinh Duc on 8/20/18.
//  Copyright © 2018 Huy Trinh Duc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
  
    

    @IBAction func btnLoginTapped(_ sender: Any) {
        if(lblUsername.text?.uppercased() == "ADMIN" && lblPassword.text?.uppercased() == "123456")
        {
            print("Login success")
            let storyboard = UIStoryboard(name: "Home", bundle: nil)
            let sb1 = storyboard.instantiateViewController(withIdentifier: "HomeTabbarID")
            self.present(sb1, animated: true, completion: nil)
        }
        else
        {
            print("Login failed")
            let alertController = UIAlertController(title: "Error", message: "Login failed! Please try again!", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    }
    @IBOutlet weak var lblUsername: UITextField!
    @IBOutlet weak var lblPassword: UITextField!
    
    
    @IBAction func btnRegisterTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sb2 = storyboard.instantiateViewController(withIdentifier: "RegisterControllerID")
        self.present(sb2, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        removeBorderNavigation()
    }
    
    //Remove border navigation controller
    func removeBorderNavigation()
    {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
}

//Hide keyboard when tap around text field
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
