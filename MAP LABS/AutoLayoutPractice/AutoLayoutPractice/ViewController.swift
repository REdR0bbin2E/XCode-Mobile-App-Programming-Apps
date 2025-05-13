//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by Akinyede, Mayowa O on 11/3/23.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet var Buttons: [UIButton]!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
  
    @IBAction func ButtonClicked(_ sender: UIButton) {
        if(sender.tag == 0)
        {
            print("C")
            playSound()
        }
        if(sender.tag == 1)
        {
            print("D")
            playSound()
        }
        if(sender.tag == 2)
        {
            print("E")
            playSound()
        }
        if(sender.tag == 3)
        {
            print("F")
            playSound()
        }
        if(sender.tag == 4)
        {
            print("G")
            playSound()
        }
        if(sender.tag == 5)
        {
            print("A")
            playSound()
        }
        if(sender.tag == 6)
        {
            print("B")
            playSound()
        }
        
        
        func playSound()
        {
            print(sender.self.titleLabel?.text ?? "a")
           
            let url = Bundle.main.url(forResource: sender.self.titleLabel?.text ?? "a", withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
        
    }
    
   
    

}

