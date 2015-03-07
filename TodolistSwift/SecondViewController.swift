//
//  SecondViewController.swift
//  TodolistSwift
//
//  Created by Romain De Page on 20/02/2015.
//  Copyright (c) 2015 Romain De Page. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_click(sender: UIButton){
        taskMgr.addTask(txtTask.text, desc: txtDesc.text);
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    
    //IOS Touch Functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITesxtFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        return true
    }


}

