//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Akinyede, Mayowa O on 9/25/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var label: UILabel!
    
    var time = Timer()
    var waiter: Bool = true
    var answers: [String] = ["It is certain","Yes definitely","Ask again later", "My reply is no", "Better not tell you now", "Cannot predict now", "Don't count on it","Reply hazy, try again"]
    
   
        
 
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if waiter == true
        {
            
            
            time = Timer.scheduledTimer(timeInterval: 5, target: self, selector:  #selector(NestedTimerFunction), userInfo: nil, repeats: true)
            
            if motion == .motionShake
            {
                waiter = false
                label.text = answers[Int.random(in: 0...answers.count)]
                
            }
        }
    }
    
    @objc func NestedTimerFunction()
    {
        
        waiter = true
        label.text = "Ask a Question..."
        
        
        
        
        
    }

}

