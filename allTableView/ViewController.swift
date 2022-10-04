//
//  ViewController.swift
//  allTableView
//
//  Created by CH 002 on 29/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var allTableView: UITableView!
    var array = ["Datepicker",
                 "UIalertcontroller","Slider","Switch","Progress view","Segmentedcontrol"]
    var array1 = ["Touch here to see Datepicker","Touch here to see Alertcontroller","Touch here to see slider","Touch here to see switch","Touch here to see progressview","Touch here to see switch","Touch here to see segmentedcontrol"]
    var segue = ["toDate","toAlert","toSlider","toSwitch","toProgress","toSegmented"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allTableView.dataSource = self
        allTableView.delegate = self
    }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return array[section]
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allTableViewCell", for: indexPath) as! allTableViewCell
        cell.nameTF.text = array1[indexPath.section]

        
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    
        view.tintColor = .systemBlue
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let id = segue[indexPath.section]
          performSegue(withIdentifier: id, sender: nil)
           
       }
}
