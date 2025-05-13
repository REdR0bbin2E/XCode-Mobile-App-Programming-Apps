//
//  ViewController.swift
//  Add One
//
//  Created by Akinyede, Mayowa O on 12/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    var gameStarted = false
    
    var i = 0
    
    var countt = 60
    var timer = Timer()
    var timerButton = UIButton()
    var timerheight = 0
    var timerwidth = 0
    
    var gameTime = Timer()
    var gameTimerButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
        
        
        
        
    }

    
    
    @IBAction func inputFieldChanged(_ sender: UITextField) {
        
        
        
        guard let b  = inputField.text else { return }

        guard b.count == 4 else {return}
        
        guard let a  = inputField.text else { return }
        
        var randomInt = Int.random(in: 1000..<9999)
        
        //var randomInt = Int.random(in: 0..<10)
        
        var digit1 = (randomInt % 10 + 1) % 10

        var digit2 = ((randomInt / 10) % 10 + 1) % 10

        var digit3 = ((randomInt / 100) % 10 + 1) % 10

        var digit4 = (randomInt / 1000 + 1) % 10

        var correctAnswer =  digit4 * 1000 + digit3 * 100 + digit2 * 10 + digit1
        
        print(a)
        print(correctAnswer)
        
        if a == "\(correctAnswer)"
        {
            
            scoreLabel.text = "\(i+=1)"
            
            
       }
        else
        {
            scoreLabel.text = "\(i-=1)"
        }
        

        gameTimerButton.frame = CGRect(x:200,y: 400, width: 0, height: 0)
        gameTimerButton.backgroundColor = UIColor.green
        gameTimerButton.setTitle(" ", for: .normal)
        view.addSubview(gameTimerButton)
        self.view = view
        
        if !gameStarted {
            gameTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector:  #selector(GameTimeFunction), userInfo: nil, repeats: true)
            gameStarted = true
        }
        
        
        
        numberLabel.text = "\(randomInt)"
        
        
        
    }
    
  
    
    func ResetGame()
    {
        var gameStarted = false
        
        var i = 0
        
        var countt = 60
        var timer = Timer()
        var timerButton = UIButton()
        var timerheight = 0
        var timerwidth = 0
        
        scoreLabel.text = "0000"
        timeLabel.text = "1:00"
        
        numberLabel.text = "\(0000)"
        
        
    }
    
    @objc func GameTimeFunction()
    {
        
        
        countt=countt-1
        timeLabel.text = "0:\(countt)"
        //print(countt)
        //  scoreLabel.text = "\(numb)"
        // print("aaaa")
        if(countt == 0)
        {
       
           var dialogMessage = UIAlertController(title: "Time ran out", message: "score = \(scoreLabel)", preferredStyle: .alert)
            
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

