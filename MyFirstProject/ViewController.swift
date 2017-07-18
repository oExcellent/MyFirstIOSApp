//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Max Walters on 7/18/17.
//  Copyright © 2017 DevMW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var tbx1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btn1(_ sender: Any) {
        lbl1.text = tbx1.text
        tbx1.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

