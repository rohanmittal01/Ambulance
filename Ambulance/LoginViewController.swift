//
//  LoginViewController.swift
//  Ambulance
//
//  Created by Vandana Mittal on 10/12/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD


class LoginViewController: UIViewController {

    @IBOutlet weak var ambID: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logInButton(_ sender: Any) {
          //  SVProgressHUD.show()
        Auth.auth().signIn(withEmail: ambID.text!, password: password.text!) { (user, error) in
            if error != nil {
                print("Login was unsuccessfull")
            }
            else{
                print("Successfully Logged In")
             //   SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
