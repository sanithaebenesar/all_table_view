//
//  switchViewController.swift
//  allTableView
//
//  Created by CH 002 on 29/09/22.
//

import UIKit

class switchViewController: UIViewController {

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    @IBAction func switchAction(_ sender: UISwitch) {
    
        if sender.isOn {
            view.backgroundColor = .systemMint
        }
        else{
            view.backgroundColor = .purple
        }
    
}


}
       

