//
//  hoursSetScreen.swift
//  Login
//
//  Created by Akinyede, Mayowa O on 1/31/24.
//

import UIKit

class hoursSetScreen: UIViewController {
    var hoursInt = 0
    var usernameVariable2 = ""
    var hoursVariable = ""
    var textfieldVar = ""
    @IBOutlet weak var Username: UILabel!
    
    @IBOutlet weak var hoursTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: replace text with user name
        Username.text = UserDefaults.standard.string(forKey: "REPLACE ME")
        
        Username.text = usernameVariable2
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func enterClicked(_ sender: UITextField) {
        textfieldVar = sender.text!
        performSegue(withIdentifier: "progressS", sender: sender)
        return
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        var secondVC: hoursSetScreen = segue.destination as! hoursSetScreen
     
        
        
        if let forthVC = segue.destination as? progressScreen {
            print(forthVC.hoursLabel)
            print(hoursTF.text!)
            forthVC.hoursLabel = hoursTF.text!
        }
        
        
        if let thirdVC = segue.destination as? progressScreen {
            
            thirdVC.usernameVariable2 = Username.text!
        }
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
