//
//  SecondViewController.swift
//  15_04_24_BackwardDataPassingDemoUsingClosures
//
//  Created by Vishal Jagtap on 03/05/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    var backDataPassClosure : ((String,String,String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func btnBackClick(_ sender: Any) {
        let extractedName = self.nameTextField.text
        let extractedRollNumber = (self.rollNumberTextField.text)!
        let extractedCity = self.cityTextField.text!
        self.backDataPassClosure!(extractedName!,
                                  extractedRollNumber,
                                  extractedCity)
        self.navigationController?.popViewController(animated: true)
    }
}
