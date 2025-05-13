//
//  progressScreen.swift
//  Voluntracker
//
//  Created by Akinyede, Mayowa O on 2/2/24.
//

import UIKit

class progressScreen: UIViewController {

    var usernameVariable2 = ""
    @IBOutlet weak var Username2: UILabel!
    var hoursLabel = ""
    var textFieldInt: Int?
    var randomInt = 0
    @IBOutlet weak var hoursLB: UILabel!
    
    @IBOutlet weak var goalReachedString: UILabel!
    @IBOutlet weak var hoursCurrently: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Username2.text = UserDefaults.standard.string(forKey: "REPLACE ME")
        
        Username2.text = usernameVariable2
        // Do any additional setup after loading the view.
        
        hoursLB.text = hoursLabel
        
        textFieldInt = Int(hoursLB.text!)
        
        
        
      
        
        
    }
    
    @IBAction func hourAdded(_ sender: Any) {
         if randomInt == textFieldInt
        {
            goalReachedString.isHidden = false
           return
            
            
        }
        else
        {
            randomInt+=1
            hoursCurrently.text = "\(randomInt)"
        }
        return
        
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
