//
//  ViewController.swift
//  Captcha
//
//  Created by Akinyede, Mayowa O on 3/8/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(at: path)
        
        for item in items
        {
            if item.hasPrefix("")
            {
                pictures.append(title)
            }
        }
    }


}

