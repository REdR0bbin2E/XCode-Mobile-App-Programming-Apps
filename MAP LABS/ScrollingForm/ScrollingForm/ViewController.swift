//
//  ViewController.swift
//  ScrollingForm
//
//  Created by Akinyede, Mayowa O on 4/15/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector:        #selector(keyboardWasShown(_:)), name:        UIResponder.keyboardDidShowNotification, object: nil) 
        NotificationCenter.default.addObserver(self, selector:        #selector(keyboardWillBeHidden(_:)), name:        UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWasShown(_ notification: NSNotification) {
        guard let info = notification.userInfo,        let keyboardFrameValue =            info[UIResponder.keyboardFrameBeginUserInfoKey] as?            NSValue else { return }     
        let keyboardFrame = keyboardFrameValue.cgRectValue 
        let keyboardSize = keyboardFrame.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom:       keyboardSize.height, right: 0.0)
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
     @objc func keyboardWillBeHidden(_ notification: NSNotification) {   
        let contentInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        registerForKeyboardNotifications()
        
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize.height, right: 0.0)
        
        scrollView.contentInset = contentInsets
            scrollView.scrollIndicatorInsets = contentInsets

    
    }


}

