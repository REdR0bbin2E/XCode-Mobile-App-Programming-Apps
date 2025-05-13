//
//  ViewController.swift
//  TipCalculator
//
//  Created by Akinyede, Mayowa O on 11/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    var tip : Double = 0.15
    
    @IBOutlet weak var percentScroller: UISlider!
    
    @IBOutlet weak var percentLabel: UILabel!
    
    @IBOutlet weak var BillA: UITextField!
    
    @IBOutlet weak var tipAmount: UILabel!
    
    @IBOutlet weak var Tip: UISegmentedControl!
    
    var x = true
    
    @IBOutlet weak var totalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        percentScroller.isHidden = true
        percentLabel.isHidden = true
        
    }
    
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        //        while x == false
        //        {
        //
        //            x = true
        //        }
        //        guard let text  = BillA.text else { return }
        //        guard let value = Double(text) else { return }
        
//        if BillA.text == ""
//        {
//            print("its empty")
//            x = false
//        }
//        else
//        {
//            percentLabel.text = "\(sender.value)"
//            var a: Double = Double(BillA.text!)!
//            a = a * Double(sender.value) - a
//            var b: Double = Double(BillA.text!)!
//            b = b * Double(sender.value)
//
//            tipAmount.text = "$\(round(a * 100) / 100.0)"
//            totalAmount.text = "$\(round(b * 100) / 100.0)"
//        }
        
        tip = Double(percentScroller.value)
        percentLabel.text = "Tip percent : \((round(tip * 100) / 100.0))"
    }
    
    @IBAction func resetButtonClicked(_ sender: UIButton) {
        percentScroller.value = 0
        percentScroller.isHidden = true
        percentLabel.text = ""
        percentLabel.isHidden = true
        tipAmount.text = "$0.00"
        totalAmount.text = "$0.00"
        BillA.text = ""
        Tip.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    
    
    @IBAction func tipPercent(_ sender: UISegmentedControl) {
        
        //        guard let text  = BillA.text else { return }
        //        guard let value = Double(text) else { return }
        
        if sender.selectedSegmentIndex == 0
        {
            tip = 0.15
//            if BillA.text == ""
//            {
//                print("its empty")
//                x = false
//            }
//            else
//            {
//                var a: Double = Double(BillA.text!)!
//                a = a * 1.15 - a
//                var b: Double = Double(BillA.text!)!
//                b = b * 1.15
//
//                tipAmount.text = "$\(round(a * 100) / 100.0)"
//                totalAmount.text = "$\(round(b * 100) / 100.0)"
//            }
        }
        if sender.selectedSegmentIndex == 1
        {
            tip = 0.18
//            if BillA.text == ""
//            {
//                print("its empty")
//                x = false
//            }
//            else
//            {
//                var a: Double = Double(BillA.text!)!
//                a = a * 1.18 - a
//                var b: Double = Double(BillA.text!)!
//                b = b * 1.18
//
//                tipAmount.text = "$\(round(a * 100) / 100.0)"
//                totalAmount.text = "$\(round(b * 100) / 100.0)"
//            }
        }
        if sender.selectedSegmentIndex == 2
        {
            tip = 0.20
//            if BillA.text == ""
//            {
//                print("its empty")
//                x = false
//            }
//            else
//            {
//                var a: Double = Double(BillA.text!)!
//                a = a * 1.20 - a
//                var b: Double = Double(BillA.text!)!
//                b = b * 1.20
//
//                tipAmount.text = "$\(round(a * 100) / 100.0)"
//                totalAmount.text = "$\(round(b * 100) / 100.0)"
//            }
        }
        if sender.selectedSegmentIndex == 3
        {
            percentScroller.isHidden = false
            percentLabel.isHidden = false
            
        }
        else
        {
            percentScroller.isHidden = true
            percentLabel.isHidden = true
        }
    }
    
    @IBAction func billAmountInputted(_ sender: UITextField) {
                guard let text  = BillA.text else { return }
                guard let value = Double(text) else { return }
      
        tipAmount.text = String(round((value * tip) * 100) / 100)
        totalAmount.text = String(round((value + value * tip) * 100) / 100)
    }
}

