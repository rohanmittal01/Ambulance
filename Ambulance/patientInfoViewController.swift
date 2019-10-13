//
//  patientInfoViewController.swift
//  Ambulance
//
//  Created by Vandana Mittal on 10/13/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit
import FirebaseDatabase

class patientInfoViewController: UIViewController,UITextFieldDelegate {

    

    @IBOutlet weak var callerName: UITextField!
    @IBOutlet weak var callerPhoneNumber: UITextField!
  
    var ref:DatabaseReference!
    var info = PatientInfoModel()
    
    
    
      override func viewDidLoad() {
        super.viewDidLoad()
       
        callerName.delegate = self
        callerPhoneNumber.delegate = self
        ref = Database.database().reference()
        retrievedata()
        
        // Do any additional setup after loading the view.
      }

    
    func retrievedata()
    {
        
        let  callerDB = ref.child("database").child("ambulance1").child("caller details")
               
        callerDB.observe(.value) { (snapshot) in
                   
            let snapshotValue = snapshot.value as? [String: AnyObject]
            print(snapshotValue)
            
            if let name = snapshotValue?["name"]
            {
                print(name)
                self.callerName.text = name as! String
            }
            if let phone = snapshotValue?["phone number"]
            {
                print(phone)
                self.callerPhoneNumber.text  = phone as! String
            }
            if let xlocation = snapshotValue?["xlocation"]
            {
                self.info.xLocation = xlocation as! String
            }
            if let ylocation = snapshotValue?["ylocation"]
            {
                self.info.yLocation = ylocation
                    as! String            }
                
           }
        print(self.info.callerName)
//        setData()
    }
//
//    func setData() {
//
//        print(info.callerName)
//        print(info.callerPhone)
//        self.callerName.text = info.callerName
//        self.callerPhoneNumber.text = info.callerPhone
//    }
    
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
