//
//  ViewController.swift
//  15_04_24_BackwardDataPassingDemoUsingClosures
//
//  Created by Vishal Jagtap on 03/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rollNumberLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnNextClick(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.backDataPassClosure = {
            name, rollNumber, city in
            self.nameLabel.text = name
            self.rollNumberLabel.text = rollNumber
            self.cityLabel.text = city
        }
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
