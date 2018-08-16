//
//  ViewController.swift
//  Animation Homework
//
//  Created by Pavel Koval on 8/16/18.
//  Copyright © 2018 Alkotsuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //    struct Constants {
    //        static let slidebleButtonConstraint = "slideToPauseButtonRightConstraint"
    //    }
    
    @IBOutlet weak var slideToPauseButton: UIButton!
    @IBOutlet weak var finishResumeStack: UIStackView!
    @IBOutlet weak var resumeButton: UIButton!
    @IBOutlet weak var finishButton: UIButton!
    @IBOutlet weak var slidebleButtonConstraint: NSLayoutConstraint!
    
    let screenWidth = UIScreen.main.bounds.size.width
    
    @IBAction func resumeButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: .curveEaseInOut, animations: {
            self.slidebleButtonConstraint.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        
        
    }
    
    @IBAction func buttonSlided(_ sender: UISwipeGestureRecognizer) {
        
        
        UIView.animate(withDuration: 0.2) {
            self.slidebleButtonConstraint.constant = -self.screenWidth
            self.finishResumeStack.alpha = 1
            self.view.layoutIfNeeded()
            
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

