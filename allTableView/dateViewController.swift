//
//  dateViewController.swift
//  allTableView
//
//  Created by CH 002 on 29/09/22.
//

import UIKit


class dateViewController: UIViewController{
    
    @IBOutlet weak var inputTextField: UITextField!
    
    var datePickr = UIDatePicker()
    let  dateformat = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        inputTextField.inputView = datePickr
        datePickr.preferredDatePickerStyle = .inline
        datePickr.addTarget(self, action: #selector(updateDatepikr), for: .valueChanged)
        dateformat.dateFormat = "dd/MM/yyyy  hh:mm "
        datePickr.maximumDate = Date()  // you cant select date beyond todays date
        //print(Date())
    }

    @objc func updateDatepikr (sender:UIDatePicker) {
        inputTextField.text  =  dateformat.string(from: sender.date)
    }
}





 
