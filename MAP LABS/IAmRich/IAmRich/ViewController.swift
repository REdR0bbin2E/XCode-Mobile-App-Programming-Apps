//
//  ViewController.swift
//  IAmRich
//
//  Created by Akinyede, Mayowa O on 8/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PoorVandal: UIImageView!
    

    
    @IBOutlet weak var ValPoints: UILabel!
    
    
    var AmRich = true
    @IBOutlet weak var IAmRichB: UILabel!
  
    @IBAction func ButtonPressed(_ sender: Any) {
        AmRich.toggle()
        if AmRich
        {
            IAmRichB.text = "I Am Poor"
            view.backgroundColor = .darkGray
            PoorVandal.image = UIImage(named: "ValoImage")
            ValPoints.text = "I have no Valo Points for you"
            
        }
        else
        {
            IAmRichB.text = "I Am Rich"
            PoorVandal.image = UIImage(named: "ValoImage2")
            view.backgroundColor = .red
            ValPoints.text = "Sike I lied lol"
        }
        
    }
    
    
    
    override func viewDidLoad() {
        view.backgroundColor = .darkGray
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

