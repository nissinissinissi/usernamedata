//
//  ViewController.swift
//  usernamedata
//
//  Created by User on 10 Tishri 5783.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var userData : [String:String] = ["Okeanna":"Okeanna", "123":"321"]
    @IBAction func SignIn(_ sender: Any) {
        if userData[userName.text!] != nil {
            if userData [userName.text!] == password.text!{
                print ("You sign in!")
            }else {
                print ("Incorrect password")
            }
        }
    }
    @IBAction func SignUp(_ sender: Any) {
        userData[userName.text!] = password.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        userName.layer.cornerRadius = 22
        password.layer.cornerRadius = 22
    }
}


