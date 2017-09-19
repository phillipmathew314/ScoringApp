//
//  ViewController.swift
//  HelloWorld
//
//  Created by Phillip Mathew on 6/20/17.
//  Copyright © 2017 Phillip Mathew. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var signIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signIn.layer.cornerRadius = 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing( true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }

}

