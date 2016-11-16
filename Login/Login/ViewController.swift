//
//  ViewController.swift
//  Login
//
//  Created by Katharine Chen on 11/14/16.
//  Copyright © 2016 Katharine Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

class CreateSignIn: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var CreateEmail: UITextField!
    @IBOutlet var CreatePassword: UITextField!
    @IBOutlet var CreateAccount: UIButton!

    @IBOutlet var SignEmail: UITextField!
    @IBOutlet var SignPassword: UITextField!
    @IBOutlet var SignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

class MyProfile: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet var Name: UITextField!
    @IBOutlet var Birthday: UITextField!
    @IBOutlet var Gender: UITextField!
    @IBOutlet var Quote: UITextField!
    @IBOutlet var Facebook: UITextField!
    @IBOutlet var Twitter: UITextField!
    @IBOutlet var Instagram: UITextField!
    @IBOutlet var Email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == Facebook)
        {
        ScrollView.setContentOffset(CGPoint (x: 0, y: 250), animated: true)
        }
        if (textField == Twitter)
        {
            ScrollView.setContentOffset(CGPoint (x: 0, y: 250), animated: true)
        }
        if (textField == Instagram)
        {
            ScrollView.setContentOffset(CGPoint (x: 0, y: 250), animated: true)
        }
        if (textField == Email)
        {
            ScrollView.setContentOffset(CGPoint (x: 0, y: 250), animated: true)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        ScrollView.setContentOffset(CGPoint (x: 0, y: 0), animated: true)
    }
}

class TextField: UITextField, UITextFieldDelegate {
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10);
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
}
