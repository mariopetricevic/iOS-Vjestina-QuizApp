//
//  ViewController.swift
//  QuizApp
//
//  Created by Five on 4/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBAction func LoginButton(_ sender: UIButton) {
        let email = emailText.text
        let password = passwordText.text
        
        print(login(email: email!, password: password!))
        

    }

    
    func login(email: String, password: String)->LoginStatus{
        
        if (email == "jana@voda.com" && password == "voda")
        {
            return LoginStatus.success
        }
        else{
            
            return LoginStatus.error(404, "wrong login data")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = "Email: jana@voda.com, pass: voda"
    }
    
 


}

