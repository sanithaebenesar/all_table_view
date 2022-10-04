//
//  sliderViewController.swift
//  allTableView
//
//  Created by CH 002 on 29/09/22.
//

import UIKit

class sliderViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        inputTextField.text = "\(currentValue)"
    }
}
