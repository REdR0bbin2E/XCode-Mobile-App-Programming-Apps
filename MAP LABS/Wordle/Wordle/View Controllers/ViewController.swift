//
//  ViewController.swift
//  Wordle
//
//  Created by Akinyede, Mayowa O on 3/27/24.
//

import UIKit

class ViewController: UIViewController {
    
    var wordTyped = ""
    var game : Wordle?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    @IBAction func userInput(_ sender: UITextField) {
        
        //check if word is appropriate length
        guard let text = sender.text else { return }
        guard text.count == 5 else
        {
            sender.text = ""
            return
        }
        sender.text = ""
       
        wordTyped = text.uppercased()
        
        
        //check if word is in dictionary
        loadDictionary()
        
        
        
    }
    
    func loadDictionary()-> Bool
    {
        do {
            
           // creating a path from the main bundle
           if let bundlePath = Bundle.main.path(forResource: "dictionary", ofType: "txt") {
              let stringContent = try String(contentsOfFile: bundlePath)
              
               
            
           
               if stringContent.contains(wordTyped)
               {
                   print("true")
                   return true
               }
               
               
               
           }
        } catch {
           print(error)
        }
        print("false")
        return false
    }


}

