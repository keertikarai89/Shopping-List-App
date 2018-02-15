//
//  ViewController.swift
//  Shopping List
//
//  Created by Keertika on 2/8/18.
//  Copyright © 2018 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
   @IBOutlet weak var textfield1: UITextField!
    
   @IBOutlet weak var textfield2: UITextField!
    
    @IBOutlet weak var itemList: UILabel!
    
    var name: String = ""
    var quantity: Int? = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //itemList.text = "No Item"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }

    
    @IBAction func backgroundTouched(_ sender: UIControl) {
        textfield1.resignFirstResponder()
        textfield2.resignFirstResponder()
        itemList.resignFirstResponder()
    }
    
    
    @IBAction func newList(_ sender: UIButton) {
        textfield1.text = ""
        textfield2.text = ""
        itemList.text = ""
    }
    
    @IBAction func newItem(_ sender: UIButton) {
        textfield1.text = ""
        textfield2.text = ""
    }
    
    
    @IBAction func addItems(_ sender: UIButton) {
        name = textfield1.text!
        quantity = Int(textfield2.text!)
        var message = "Invalid Input"
        
        if ((textfield1.text?.isEmpty)!) || (quantity == 0) || Int(textfield2.text!) == nil || (textfield2.text?.isEmpty)! {
            message = "Invalid Input"
            let title = "Alert"
            let alertController = UIAlertController(title: title,message: message, preferredStyle: .alert)
            
            // Create the action.
            let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(okAction)
            present(alertController,animated: true,completion: nil)
        }
        
        else if (itemList.text == "") {
                itemList.text = "\(quantity ?? 1) x \(name)"
            }
            
            else {
                itemList.text = "\(itemList.text ?? "No Item")\n\(quantity ?? 1) x \(name)"
            }
        
        
        
    }
    
}
    

