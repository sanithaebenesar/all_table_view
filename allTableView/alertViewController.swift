//
//  alertViewController.swift
//  allTableView
//
//  Created by CH 002 on 29/09/22.
//

import UIKit

class alertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    
    @IBAction func alertBUtton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Sorry!", message: "Tranaction failed.Try again later", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func secondAlertaction(_ sender: Any) {
        
        let alert2 = UIAlertController(title: "Alert", message: "Are you Sure?", preferredStyle: .actionSheet)
        let yes = UIAlertAction(title: "yes", style: .default) { alert in
            print("yes")
        }
        let maybe = UIAlertAction(title: "maybe", style: .destructive) { alert in
            print("maybe")
        }
        let no = UIAlertAction(title: "No", style: UIAlertAction.Style.cancel, handler: nil)
        
        alert2.addAction(yes)
        alert2.addAction(maybe)
        alert2.addAction(no)
        self.present(alert2, animated:true)
    }
    
    

    

}
