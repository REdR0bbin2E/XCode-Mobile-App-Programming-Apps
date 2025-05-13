//
//  addTransaction.swift
//  Mynance
//
//  Created by Akinyede, Mayowa O on 5/1/24.
//

import UIKit

class addTransaction: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var picker: UIPickerView!
    
    var transUsage = ""
    
    var transactionTypes: [String] = [String]()
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        transUsage = transactionTypes[row]
       return transactionTypes[row]
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.delegate = self
        self.picker.dataSource = self
        
        transactionTypes = ["Income","Shopping","Luxuries"]
        // Do any additional setup after loading the view.
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
