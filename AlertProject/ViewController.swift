//
//  ViewController.swift
//  AlertProject
//
//  Created by eyüp yaşar demir on 13.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func singUpClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title:  "OK", style: UIAlertAction.Style.cancel) { UIAlertAction in
            print("Button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true , completion: nil)*/
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found!")
        }else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found!")
        }else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error", messageInput: "Password do no match!")
        }else {
            makeAlert(titleInput: "Seccess", messageInput: "User OK")
        }
        
    }
    
    func makeAlert (titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title:  "OK", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true , completion: nil)
    }
    
}

