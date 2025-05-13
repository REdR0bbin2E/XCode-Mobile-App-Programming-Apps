//
//  ViewController.swift
//  Trivia
//
//  Created by Akinyede, Mayowa O on 2/8/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var questionDisplay: UILabel!
    

    
    let Television = ["":""]
    
    let History = ["":""]
    
    let Science = ["":""]

    @IBOutlet weak var catogoriesP: UIPickerView!
    
    @IBOutlet weak var numberP: UIPickerView!
    
    var catPicked : Int = 0
    
    var questPicked = ""
    
    var pickerCato: [String] = [String]()
    var pickerQues: [String] = [String]()
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //WIP
        
        
        
        var secondTab = self.tabBarController?.viewControllers?[1] as! GameVC
        
        
        
    
        
      
      
        if pickerView == catogoriesP
        {
           
            
            secondTab.userCatPicked = pickerCato[row]
            
            
            //print(catPicked.description)
            
         //   print(catogoriesP.selectedRow(inComponent: catPicked))
               
        }
        else
        {
            
            secondTab.userQuesNumPicked =  row + 1
          
            
            //print(numberP.description)
        }
        
      
      
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == catogoriesP
        {
            
            return pickerCato[row]
           
        }
        else
        {
           
            return pickerQues[row]
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.catogoriesP.delegate = self
        self.catogoriesP.dataSource = self
        
        self.numberP.delegate = self
        self.numberP.dataSource = self
        
        
       
        
        pickerCato = ["General Knowledge", "Entertainment: Books", "Entertainment: Film", "Entertainment: Music","Entertainment: Television","History","Science & Nature"," Animals","Entertainment: Japanese Anime & Manga","Entertainment: Cartoon & Animations"]
        
        
        
        pickerQues = ["1","2","3","4","5","6","7","8","9","10"]
        
      
        
        
        
        
        
        
        
        
      
        
        //secondTab.array = firstArray
        
        
        
        // Do any additional setup after loading the view.
    }
    
    

    
    

}

