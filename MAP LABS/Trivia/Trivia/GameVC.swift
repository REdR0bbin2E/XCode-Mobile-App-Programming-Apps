//
//  GameVC.swift
//  Trivia
//
//  Created by Akinyede, Mayowa O on 2/28/24.
//

import UIKit

class GameVC: UIViewController {

    var userQuesNumPicked = 0
    
    var userCatPicked = ""
    
    var a = 0
    
    
     
 
    
    
    var scoreTracker = 0
    
    //var question = ""
   //var cor = ""
    //var incorrect = [String]()
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var Buttons: [UIButton]!
    
    
   
    
    
    @IBAction func buttonsPressed(_ sender: UIButton) {
      
        if a == userQuesNumPicked
        {
            performSegue(withIdentifier: "scoreScreenS", sender: sender)
        }
        
       //if button title = correct then add one to score
        //FIX AND UR DONE
        
        if sender.currentTitle == TriviaGame.getQuestionDB()[userCatPicked]?[a].correct
        {
            scoreTracker+=1
        }
        
        
        
        a+=1
        update()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        if let secondVC = segue.destination as? scoreVC {
            //FIX THIS
            secondVC.outOf = "\(userQuesNumPicked)"
            secondVC.score = "\(scoreTracker)"
            
        }
    }
        
    func update()
    {
     
        //add loop
        
        var x = Int.random(in: 0...3)
        
        questionLabel.text = TriviaGame.getQuestionDB()[userCatPicked]?[a].q
        
        
        //update question text
      
            if x == 0
        {
                Buttons[0].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].correct, for: .normal)
                
                Buttons[1].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[0], for: .normal)
                
                Buttons[2].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[1], for: .normal)
                
                Buttons[3].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[2], for: .normal)
            }
          else if x == 1
        {
              Buttons[1].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].correct, for: .normal)
              
              Buttons[2].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[0], for: .normal)
              
              Buttons[3].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[1], for: .normal)
              
              Buttons[0].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[2], for: .normal)
          }
        else if x == 2
      {
            Buttons[2].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].correct, for: .normal)
            
            Buttons[3].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[0], for: .normal)
            
            Buttons[0].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[1], for: .normal)
            
            Buttons[1].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[2], for: .normal)
        }
        else if x == 3
      {
            Buttons[3].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].correct, for: .normal)
            
            Buttons[0].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[0], for: .normal)
            
            Buttons[1].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[1], for: .normal)
            
            Buttons[2].setTitle(TriviaGame.getQuestionDB()[userCatPicked]?[a].incorrect[2], for: .normal)
        }
          
        }
        
    
    
    override func viewWillAppear(_ animated: Bool) {
        update()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
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
