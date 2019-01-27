//
//  ViewController.swift
//  test12
//
//  Created by Ahmed Shoukr on 1/27/19.
//  Copyright © 2019 Ahmed Shoukr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    static let sharedInstance : ViewController = {
        let instance = ViewController()
        return instance
    }()
    
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textFieldOutlet.delegate = self
    }
    
    @IBOutlet weak var label: UILabel!
    @IBAction func textField(_ sender: UITextField) {
        ViewController.sharedInstance.label.text = ViewController.sharedInstance.textFieldOutlet.text!
    }
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        self.label.text = self.textFieldOutlet.text!
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textFieldOutlet.text = ""
    }

}

