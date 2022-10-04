//
//  progressViewController.swift
//  allTableView
//
//  Created by CH 002 on 29/09/22.
//

import UIKit

class progressViewController: UIViewController {
    
    var progressValue : Float = 0.0
    
    @IBOutlet weak var progressView: UIProgressView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateProgress()
    }
    
    @objc func updateProgress (){
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if self.progressValue != 1{
                self.progressValue += 0.1
                self.progressView.setProgress(self.progressValue, animated: true)
            }
        }
        
    }
}

