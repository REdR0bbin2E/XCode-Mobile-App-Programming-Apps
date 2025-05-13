//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Akinyede, Mayowa O on 1/17/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var segueSwitch: UISwitch!
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn
        {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn
        {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

}

