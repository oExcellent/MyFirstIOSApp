//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Max Walters on 7/18/17.
//  Copyright © 2017 DevMW. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var tbx1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //return button dismisses keyboard
      //  tbx1.delegate = self
    /*
         func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         tbx1.resignFirstResponder()
         return false
         }
    */
    }

    @IBAction func btn1(_ sender: Any) {
        lbl1.text = tbx1.text
        tbx1.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tbx1.resignFirstResponder()
        //buttonCopy()
        btn1(self)
        return false
    }
    
    //Copy the button funtion so that it can be used as an all in one keyboard dismisser and action caller.
    
    func buttonCopy(){
    lbl1.text = tbx1.text
    tbx1.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

