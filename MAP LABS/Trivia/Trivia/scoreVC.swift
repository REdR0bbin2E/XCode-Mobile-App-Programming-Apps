//
//  scoreVC.swift
//  Trivia
//
//  Created by Akinyede, Mayowa O on 3/1/24.
//

import UIKit

class scoreVC: UIViewController {

    var score = ""
    
    var outOf = ""
    
    @IBOutlet weak var scoreNum: UILabel!
    
    @IBOutlet weak var questionsNum: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scoreNum.text = score
        
        questionsNum.text = outOf
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
