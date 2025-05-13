//
//  AthleteFormViewController.swift
//  Favorite Athletes
//
//  Created by Akinyede, Mayowa O on 3/19/24.
//

import UIKit

class AthleteFormViewController: UIViewController {

    var athlete: Athlete?
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var teamTextField: UITextField!
    
    @IBOutlet weak var leagueTextField: UITextField!
    
    
    init?(coder: NSCoder, athlete: Athlete?)
    {
        super.init(coder: coder)
        
        self.athlete = athlete
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
   
    
    
    
    func updateView()
    {
       viewDidLoad()
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
