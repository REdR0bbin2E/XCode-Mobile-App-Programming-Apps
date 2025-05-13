//
//  ViewController.swift
//  Destiny
//
//  Created by Akinyede, Mayowa O on 9/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var StoryText: UILabel!
    
    @IBOutlet weak var Path1: UIButton!
    
    @IBOutlet weak var Path2: UIButton!
    
    
        
    @IBAction func Button1Clicked(_ sender: Any) {
        game.currentStory = game.currentStory+1
      updateText()
        updateButtonText()
        
    }
    
    @IBAction func Button2Clicked(_ sender: Any) {
        game.currentStory =  game.currentStory+1
        updateText()
        updateButtonText()
        
    }
    
var game = Destiny()
 
    func updateText()
    {
        StoryText.text = game.getTitle()
    }
    func updateButtonText()
    {
        Path1.setTitle(game.getChoice1(), for: .normal)
        Path2.setTitle(game.getChoice2(), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

