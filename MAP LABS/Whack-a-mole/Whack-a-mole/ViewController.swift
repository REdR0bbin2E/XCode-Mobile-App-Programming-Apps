//
//  ViewController.swift
//  Whack-a-mole
//
//  Created by Akinyede, Mayowa O on 8/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    var mole = UIButton()
    var screenWidth = 0
    var screenHeight = 0
    
    var contactinfo = UIButton()
    
    
    var backgroundLabel = UILabel()
    var labelHeight = 725
    var labelWidth = 375
    
    
    var scoreLabel = UILabel()
    var scoreLHeight = 10
    var scoreLWidth = 10
    var numb = 0
    
    var timer = Timer()
    var timerButton = UIButton()
    var timerheight = 0
    var timerwidth = 0
    
    var nestedTimer = Timer()
    var nestedTimerButton = UIButton()
    
    var hold = 1
     
    override func viewDidLoad() {
        super.viewDidLoad()
        //background making
        backgroundLabel.frame = CGRect(x:9, y:100,width:labelWidth, height: labelHeight)
        backgroundLabel.backgroundColor = UIColor.green
        view.addSubview(backgroundLabel)
        
        //ScoreLabel
        scoreLabel.frame = CGRect(x:8,y:80,width: scoreLWidth, height: scoreLHeight)
        scoreLabel.backgroundColor = .white
        scoreLabel.text = "0"
        view.addSubview(scoreLabel)
        
        
        //Button making
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        
        mole.frame = CGRect(x: 9, y: 100, width: 100,height: 20)
        mole.backgroundColor = UIColor.blue
        mole.setTitle("Tap to start!", for: .normal)
        
        mole.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
        
        view.addSubview(mole)
        self.view = view
        //Timer making
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    @objc func hitMe(_ sender : UIButton!)
    {
        
        
        nestedTimerButton.frame = CGRect(x:200,y: 400, width: 0, height: 0)
        nestedTimerButton.backgroundColor = UIColor.green
        nestedTimerButton.setTitle("", for: .normal)
        view.addSubview(nestedTimerButton)
        self.view = view
        nestedTimer.invalidate()
        nestedTimer = Timer.scheduledTimer(timeInterval: 2, target: self, selector:  #selector(NestedTimerFunction), userInfo: nil, repeats: true)
        
        
        numb+=1
        scoreLabel.text = "\(numb)"
        
        
            let molex = Int.random(in: 11...325)
            let moley = Int.random(in: 11...695)
            mole.frame = CGRect(x: molex, y: moley, width: 100,height: 20)
        
        
        
        
        
        mole.setTitle("Hit me!", for: .normal)
        print("got ' em!")
        
        
        
    }
    
    
    @objc func NestedTimerFunction()
    {
        
        
       numb-=1
        scoreLabel.text = "\(numb)"
        print("aaaa")
        let molex = Int.random(in: 11...325)
        let moley = Int.random(in: 11...695)
        mole.frame = CGRect(x: molex, y: moley, width: 100,height: 20)
        
        
        
        
        
    }
    
}
