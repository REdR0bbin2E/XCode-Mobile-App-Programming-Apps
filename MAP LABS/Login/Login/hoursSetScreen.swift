//
//  hoursSetScreen.swift
//  Login
//
//  Created by Akinyede, Mayowa O on 1/31/24.
//

import UIKit

class hoursSetScreen: UIViewController {

    var usernameVariable = ""
    @IBOutlet weak var Username: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Username.text = UserDefaults.standard.string(forKey: <#T##String#>)

        
        
        // Do any additional setup after loading the view.
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
