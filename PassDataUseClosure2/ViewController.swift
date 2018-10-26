//
//  ViewController.swift
//  PassDataUseClosure2
//
//  Created by Hiếu Nguyễn on 10/4/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    var data: String?
    var passData: ((_ data: String) -> () )?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if data != nil {
            textField.text = data
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendingData(_ sender: UIButton) {
        data = textField.text
        passData!(data!)
        navigationController?.popViewController(animated: true)
    }
    

}

