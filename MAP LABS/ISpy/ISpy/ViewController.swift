//
//  ViewController.swift
//  ISpy
//
//  Created by Akinyede, Mayowa O on 4/15/24.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    func updateZoomFor(size : CGSize)
    {
        let widthScale = size.width/imageView.bounds.width
        let heightScale = size.height/imageView.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
        
    }
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
        
    }
    }

