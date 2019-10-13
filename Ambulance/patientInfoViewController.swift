//
//  patientInfoViewController.swift
//  Ambulance
//
//  Created by Vandana Mittal on 10/13/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit
import Firebase

class patientInfoViewController: UIViewController {

    

    @IBOutlet weak var callerPhoneNumber: UITextField!
  
    @IBOutlet weak var callerName: UILabel!
    var ref:DatabaseReference!
    
    
    
    
    
      override func viewDidLoad() {
        super.viewDidLoad()
       
        ref = Database.database().reference()
        retrievedata()
        // Do any additional setup after loading the view.
      }

    
    func retrievedata()
    {
        ref.child("ambulance1").child("caller details").observe(.childAdded) { (snapshot) in
            
            let snapshotValue = snapshot.value as! Dictionary<String,String>
            
        }
        
    }
    
    
  /*
    func db(database: String)
    {
    var refName : DatabaseReference?
    
    refName = Database.database().reference().child(database)
   refName?.observe(DataEventType.value, with: {
    (snapshot) in

    if(snapshot.childrenCount>0){
    for cellContents in snapshot.children.allObjects as!  [DataSnapshot]
    {
        
    let cellObject = cellContents.value as? [String: AnyObject]
    let name = cellObject?["name"]
    let phonenumber = cellObject?["phone number"]
        print(name!)
        print(phonenumber!)
        
    let xlocation = cellObject?["xlocation"]
    let ylocation = cellObject?["yloction"]
    
        self.callerName.text = name as! String?
        self.callerPhoneNumber.text = phonenumber as! String?
        
    }
        }
  
        })
    }

 */
 
 
   
        
}
