//
//  ViewController.swift
//  Login
//
//  Created by Akinyede, Mayowa O on 1/23/24.
//

import UIKit

class CreateAccountVC: UIViewController {

   // var LoginInformation = [String:String]()
    
   
    

    @IBOutlet weak var NewUsername: UITextField!
    
    @IBOutlet weak var NewPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func CreateAccountAction(_ sender: Any) {
        guard NewUsername.text == "" else {
            return
        }
        guard NewPassword.text == "" else {
            return
        }
        
        UserDefaults.standard.set(NewPassword.text, forKey: NewUsername.text!)
        
        print("saved info")
        print(UserDefaults.standard)
      // LoginInformation.updateValue( "\(NewPassword)", forKey: "\(NewUsername)")
        //print(LoginInformation)
            
    }
        
        
            
            
            
      //  usernames.append(NewUsername)
        //passwords.append(NewPassword)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


