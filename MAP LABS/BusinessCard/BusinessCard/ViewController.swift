//
//  ViewController.swift
//  BusinessCard
//
//  Created by Akinyede, Mayowa O on 10/12/23.
//

import UIKit

class ViewController: UIViewController {
    var phoneNumber = UILabel()
    var email = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        phoneNumber.isHidden = true
        email.isHidden = true
      
        
        
        view.backgroundColor = UIColor.lightGray
        
        //Screen size info.
        var screenHeight = view.frame.height
        var screenWidth = view.frame.width
        print(screenWidth)
        print(screenHeight)
        
        
        var pfpView = UIImageView()
        var pfp = UIImage(named: "PFP")
        
        
        pfpView.frame = CGRect(x: screenHeight-screenWidth-40, y: screenHeight-screenWidth, width: 200, height: 200)
        pfpView.layer.borderWidth = 1
           pfpView.layer.masksToBounds = false
           pfpView.layer.borderColor = UIColor.white.cgColor
        pfpView.layer.cornerRadius = pfpView.frame.height/2
           pfpView.clipsToBounds = true
        
        pfpView.image = pfp
        
        view.addSubview(pfpView)

        
       
        
        
        var name = UILabel()
        name.text = "Mayowa Akinyede"
        name.textColor = UIColor.white
        name.frame = CGRect(x: screenWidth/2.3, y: 1.5, width: screenWidth, height: screenHeight+(screenWidth/5)-60)
       

        view.addSubview(name)
        
        
        
        var contactInfo = UIButton()
        contactInfo.setTitle("tap to show contact info", for: .normal)
        contactInfo.titleLabel?.adjustsFontSizeToFitWidth = true
        contactInfo.frame = CGRect(x: 0, y: 2, width: screenWidth, height: screenHeight+(screenWidth/5))
        contactInfo.addTarget(self, action: #selector(HitMe(_:)), for: .touchUpInside)
        
        view.addSubview(contactInfo)
        
     
       //PHONENUMBER
        phoneNumber.textColor = UIColor.white
        phoneNumber.text = "         123-456-7890"
        
        phoneNumber.frame = CGRect(x: screenWidth/2-75, y: screenHeight/1.65, width: 200, height: 50)
        
        phoneNumber.layer.borderColor = UIColor.white.cgColor
        phoneNumber.layer.borderWidth = 2
     
        phoneNumber.layer.cornerRadius = 20
        
        //EMAIL
        email.textColor = UIColor.white
        email.text = "  mayo.akin2@gmail.com"
        email.frame = CGRect(x: screenWidth/2-75, y: screenHeight/1.5, width: 200, height: 50)
        
        email.layer.borderColor = UIColor.white.cgColor
        
        email.layer.borderWidth = 20
     
        email.layer.cornerRadius = 20
        
        view.addSubview(email)
        view.addSubview(phoneNumber)
    
        
    }
    

  
    @objc func HitMe(_ sender: UIButton!)
    {
        
        var screenHeight = view.frame.height
        var screenWidth = view.frame.width
      
        
        
        if (sender.titleLabel?.text == "tap to show contact info")
        {
            sender.setTitle("tap to hide info", for: .normal)
     
            phoneNumber.isHidden = false
            email.isHidden = false
            
            
        }
        else
        {
            sender.setTitle("tap to show contact info", for: .normal)
            phoneNumber.isHidden = true
            email.isHidden = true
            
      
            
        }
            
        
     
        
        
        
        
    
    }
    
    
    
    

}

