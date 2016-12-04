//
//  SigninVC.swift
//  Vira-Rider
//
//  Created by Steve Sneller on 12/3/16.
//  Copyright © 2016 SteveSneller. All rights reserved.
//

import UIKit

class SigninVC: UIViewController {

    @IBOutlet var emailTextField: UITextField!
   
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var phoneTextField: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logIn(_ sender: Any) {
    }

    @IBAction func signUp(_ sender: Any) {
    }

    
    

}  //class

/*
 
 
 
 import UIKit
 import LocalAuthentication
 
 class SignInVC: UIViewController {
 
 private let RIDER_SEGUE = "RiderVC";
 
 @IBOutlet weak var emailTextField: UITextField!
 
 @IBOutlet weak var passwordTextField: UITextField!
 
 
 override func viewDidLoad() {
 super.viewDidLoad()
 
 
 let authenticationContext = LAContext()
 
 var error: NSError?
 
 if authenticationContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
 
 authenticationContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "We need to know who you are...") { (success, error) in
 
 if success {
 
 print("User has authenticated")
 //        self.resultLabel.text = "User has authenticated"
 
 if self.emailTextField.text != "" && self.passwordTextField.text != "" {
 
 AuthProvider.Instance.login(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, loginHandler: { (message) in
 
 if message != nil {
 self.alertTheUser(title: "Problem With Authentication", message: message!);
 } else {
 UberHandler.Instance.rider = self.emailTextField.text!;
 
 self.emailTextField.text = "";
 self.passwordTextField.text = "";
 
 self.performSegue(withIdentifier: self.RIDER_SEGUE, sender: nil);
 }
 print("VDL")
 });
 
 }
 
 
 
 } else {
 
 if let error = error {
 
 print (error)
 //        self.resultLabel.text = "Error"
 
 } else {
 
 print("Did not authenticate")
 //            self.resultLabel.text = "Did not authenticate"
 }
 }
 }
 
 //       } else {
 
 //        self.resultLabel.text = "Device does not have touch id"
 //    }
 
 
 
 }
 }
 
 @IBAction func logIn(_ sender: AnyObject) {
 
 if emailTextField.text != "" && passwordTextField.text != "" {
 
 AuthProvider.Instance.login(withEmail: emailTextField.text!, password: passwordTextField.text!, loginHandler: { (message) in
 
 if message != nil {
 self.alertTheUser(title: "Problem With Authentication", message: message!);
 } else {
 UberHandler.Instance.rider = self.emailTextField.text!;
 
 self.emailTextField.text = "";
 self.passwordTextField.text = "";
 
 self.performSegue(withIdentifier: self.RIDER_SEGUE, sender: nil);
 }
 
 });
 
 } else {
 alertTheUser(title: "Email And Password Are Required", message: "Please enter email and password in the text fields");
 }
 }
 
 @IBAction func signUp(_ sender: AnyObject) {
 
 if emailTextField.text != "" && passwordTextField.text != "" {
 
 AuthProvider.Instance.signUp(withEmail: emailTextField.text!, password: passwordTextField.text!, loginHandler: { (message) in
 
 if message != nil {
 self.alertTheUser(title: "Problem With Creating A New User", message: message!);
 } else {
 
 UberHandler.Instance.rider = self.emailTextField.text!;
 
 self.emailTextField.text = "";
 self.passwordTextField.text = "";
 
 self.performSegue(withIdentifier: self.RIDER_SEGUE, sender: nil);
 }
 
 });
 
 } else {
 alertTheUser(title: "Email And Password Are Required", message: "Please enter email and password in the text fields");
 }
 
 }
 
 private func alertTheUser(title: String, message: String) {
 let alert = UIAlertController(title: title, message: message, preferredStyle: .alert);
 let ok = UIAlertAction(title: "OK", style: .default, handler: nil);
 alert.addAction(ok);
 present(alert, animated: true, completion: nil);
 }
 
 
 
*/





























