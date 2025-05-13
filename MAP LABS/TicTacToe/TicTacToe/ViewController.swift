//
//  ViewController.swift
//  TicTacToe
//
//  Created by Akinyede, Mayowa O on 9/27/23.
//

import UIKit

class ViewController: UIViewController {
   
    var game = TicTacToe()
       
    @IBOutlet var Buttons: [UIButton]!
    
    @IBOutlet weak var WinText: UILabel!
    @IBAction func ButtonsClicked(_ sender: UIButton) {
        if game.CheckforWin() == true
        {
            WinText.text = "There's been a win!"
            return
        }
        
        print(game.currentTurn)
        
        if game.board[sender.tag] == ""
        {
            
            if(game.currentTurn == "O")
            {
                sender.setTitle(game.currentTurn, for: .normal)
                game.currentTurn = "X"
                game.board[sender.tag] = game.currentTurn
                
              
            }
            else if(game.currentTurn == "X")
            {
                sender.setTitle(game.currentTurn, for: .normal)
                game.currentTurn = "O"
                game.board[sender.tag] = game.currentTurn
                
            }
        }
        else
        {
            print("There's already a mark there!")
        }
        if game.CheckforWin() == true
        {
            WinText.text = "There's been a win!"
            return
        }
    }

    
    //FINISH THIS
    @IBAction func Restartclicked(_ sender: Any) {
        for i in 0...8
        {
            game.board[i] = ""
            Buttons[i].setTitle("", for: .normal)
        }
        WinText.text = ""
      
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        

        
      
        
        
     
        
        
        
        
        
        
        
       
        
        
        
    }


}

