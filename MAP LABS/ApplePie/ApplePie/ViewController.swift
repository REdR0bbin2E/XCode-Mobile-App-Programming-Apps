//
//  ViewController.swift
//  ApplePie
//
//  Created by Akinyede, Mayowa O on 11/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    var currentGame : Game!
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    var incorrectMovesAllowed = 3
    
    var totalWins = 0
    {
        didSet
        {
            newRound()
        }
    }
    
    var totalLosses = 0
    {
        didSet
        {
            newRound()
        }
    }
    
    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        print(sender.self.titleLabel)
        
        let letterString = sender.configuration!.title!
        
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        
        
    }
    func newRound()
    {
        if !listOfWords.isEmpty
        {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        }
        else
        {
            enableLetterButtons(false)
        }
    }
    
    func updateUI()
    {
        var letters = [String]()
        for letter in currentGame.formattedWord
        {
            letters.append(String(letter))
        }
        let wordwithSpacing = letters.joined(separator: " ")
        correctWordLabel.text =  wordwithSpacing

        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
    }
    func enableLetterButtons(_ enable: Bool)
    {
        for button in letterButtons
        {
            button.isEnabled = enable
        }
    }
    func updateGameState()
    {
        if currentGame.incorrectMovesRemaining == 0
        {
            totalLosses += 1
        }
        else if currentGame.word == currentGame.formattedWord
        {
            totalWins += 1
        }
        else
        {
            updateUI()
        }
    }
    
}




