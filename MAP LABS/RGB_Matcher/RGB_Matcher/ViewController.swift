//
//  ViewController.swift
//  RGB_Matcher
//
//  Created by Akinyede, Mayowa O on 10/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var RGBScroll: [UISlider]!
    
    @IBOutlet weak var count: UILabel!
    
    var MCBorder = UILabel()
    var YCBorder = UILabel()
    
    var gameStarted = false
    
    var countt = 7
    var timer = Timer()
    var timerButton = UIButton()
    var timerheight = 0
    var timerwidth = 0
    
    var gameTime = Timer()
    var gameTimerButton = UIButton()
    
    var Yred : CGFloat = 0.5
    var Ygreen : CGFloat = 0.5
    var Yblue : CGFloat = 0.5
    
    var red : CGFloat = CGFloat.random(in:0...1)
    var green : CGFloat = CGFloat.random(in:0...1)
    var blue : CGFloat = CGFloat.random(in:0...1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //TIMER
        
        
        
        
        
        
        
        
        //MY COLOR
        MCBorder.text = ""
        MCBorder.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 2)
        MCBorder.layer.borderColor = UIColor.black.cgColor
        MCBorder.layer.cornerRadius = 5
        MCBorder.layer.borderWidth = 3
        MCBorder.frame = CGRect(x: 215 , y: 82, width: 150, height: 300)
        
        
        
        
        
        //YOUR COLOR
        YCBorder.text = ""
        YCBorder.layer.borderColor = UIColor.black.cgColor
        YCBorder.backgroundColor = UIColor(red: Yred , green: Ygreen, blue: Yblue, alpha: 2)
        YCBorder.layer.cornerRadius = 5
        YCBorder.layer.borderWidth = 3
        YCBorder.frame = CGRect(x: 30, y: 82, width: 150, height: 300)
        
        
        
        
        view.addSubview(MCBorder)
        view.addSubview(YCBorder)
        
        
        
    }
    
    
    //WIP
    func ResetGame()
    {
        gameStarted = false
        countt = 7
        RGBScroll[0].value = 0.5
        RGBScroll[1].value = 0.5
        RGBScroll[2].value = 0.5
        Yred = 0.5
        Ygreen = 0.5
        Yblue = 0.5
        YCBorder.backgroundColor = UIColor(red: Yred , green: Ygreen, blue: Yblue, alpha: 2)
        red = CGFloat.random(in:0...1)
        green = CGFloat.random(in:0...1)
        blue = CGFloat.random(in:0...1)
        MCBorder.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 2)
        
        
        
    }
    
    func CheckForWin()
    {
        var rDistance : Double = 0
        if(red >= Yred)
        {
            
            rDistance = red-Yred
            
        }
        else
        {
            rDistance = Yred-red
            
        }
        
        var gDistance : Double = 0
        if(green >= Ygreen)
        {
            gDistance = green-Ygreen
            
        }
        else
        {
            gDistance = Ygreen-green
            
        }
        
        var bDistance : Double = 0
        if(blue >= Yblue)
        {
            bDistance = blue-Yblue
            
        }
        else
        {
            bDistance = Yblue-blue
            
        }
        
        if(rDistance<0.05 && gDistance<0.05 && bDistance<0.05)
        {
            var diff = sqrt(rDistance*rDistance + gDistance*gDistance + bDistance*bDistance)
            var score = (1-diff)
            score = score*100
            
            
            
            var dialogMessage = UIAlertController(title: "You Win!", message: "score = \(score)", preferredStyle: .alert)
            
            var clearAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) {
                UIAlertAction in
                NSLog("Cancel Pressed")
                
                
                
                self.ResetGame()
                
                
                
            }
            
            dialogMessage.addAction(clearAction)
            
            self.present(dialogMessage, animated: true, completion: nil)
            
        }
        
        
    }
    
    
    
    @IBAction func SliderMoved(_ sender: UISlider) {
        
        //DO TIMER STUFF
        
        gameTimerButton.frame = CGRect(x:200,y: 400, width: 0, height: 0)
        gameTimerButton.backgroundColor = UIColor.green
        gameTimerButton.setTitle(" ", for: .normal)
        view.addSubview(gameTimerButton)
        self.view = view
        
        if !gameStarted {
            gameTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector:  #selector(GameTimeFunction), userInfo: nil, repeats: true)
            gameStarted = true
        }
        
        print(gameTime)
        if(gameTime.timeInterval == 10)
        {
            print("Aaaaaaa")
        }
        if(sender.tag == 0)
        {
            Yred = CGFloat(sender.value)
            YCBorder.backgroundColor = UIColor(red: Yred, green: Ygreen, blue: Yblue, alpha: 2)
        }
        else if(sender.tag == 1)
        {
            Ygreen = CGFloat(sender.value)
            YCBorder.backgroundColor = UIColor(red: Yred, green: Ygreen, blue: Yblue, alpha: 2)
        }
        
        else if(sender.tag == 2)
        {
            Yblue = CGFloat(sender.value)
            YCBorder.backgroundColor = UIColor(red: Yred , green: Ygreen, blue: Yblue, alpha: 2)
        }
        
        CheckForWin()
        
    }
    
    @objc func GameTimeFunction()
    {
        
        
        countt=countt-1
        count.text = "\(countt)"
        print(countt)
        //  scoreLabel.text = "\(numb)"
        // print("aaaa")
        if(countt == 0)
        {
       
           var dialogMessage = UIAlertController(title: "Time ran out. You Lose!", message: "score = 0", preferredStyle: .alert)
            
            gameTime.invalidate()
            
           
            
            
            var clearAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) {
                UIAlertAction in
                NSLog("Cancel Pressed")
                
                self.ResetGame()
            }
            
            dialogMessage.addAction(clearAction)
            
            self.present(dialogMessage, animated: true, completion: nil)
        }
       
        
        
    }
}

