//
//  ViewController.swift
//  Login
//
//  Created by Akinyede, Mayowa O on 1/19/24.
//

import UIKit

class ViewController: UIViewController {
  
    var loginTimes = 0
    
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    
    
   
    
    
    @IBAction func createAccount(_ sender: Any) {
        performSegue(withIdentifier: "CreateAccountS", sender: sender)
    }
    
    
    @IBAction func forgotPassword(_ sender: Any) {
        
        performSegue(withIdentifier: "forgotPass", sender: sender)
    }
    
    
    @IBAction func logIn(_ sender: Any) {
        
        guard usernameField.text != "" else {
            
            return
        }
        guard passwordField.text != "" else {
         
            return
        }
        
        guard UserDefaults.standard.string(forKey: usernameField.text!) != nil else
        {
            
            print("omg something happened")
            return
        }
       
        
        
           loginTimes = 0
             performSegue(withIdentifier: "loginWorkedS", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        var secondVC: hoursSetScreen = segue.destination as! hoursSetScreen
        
        if let secondVC = segue.destination as? hoursSetScreen {
            
            secondVC.usernameVariable2 = usernameField.text!
        }
        
    }
    
    
    
    
  /*  @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var ForgotUserNameButton: UIButton!
    
    @IBOutlet weak var ForgotPassWordButton: UIButton!
    
    
    @IBAction func ForgotUserNameAction(_ sender: Any) {
        performSegue(withIdentifier: "LoginToLanding", sender: sender)
    }
    @IBAction func ForgotPassWordAction(_ sender: Any) {
        performSegue(withIdentifier: "LoginToLanding", sender: sender)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == ForgotPassWordButton
        {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == ForgotUserNameButton
        {
            segue.destination.navigationItem.title = "Forgot Username"
        }
         else
        {
         segue.destination.navigationItem.title = usernameText.text
        }
            
        }
       */
        
    }



