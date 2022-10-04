//
//  segmentedViewController.swift
//  allTableView
//
//  Created by CH 002 on 30/09/22.
//

import UIKit

class segmentedViewController: UIViewController {
    @IBOutlet weak var segmentedoutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func segementedControlAction(_ sender: UISegmentedControl) {
     let index = segmentedoutlet.selectedSegmentIndex
        if (index == 0 ){
            view.backgroundColor = .systemIndigo
        }
        else {
            view.backgroundColor = .systemRed
        }
        
    }
    

}
