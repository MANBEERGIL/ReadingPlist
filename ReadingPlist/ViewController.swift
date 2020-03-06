//
//  ViewController.swift
//  ReadingPlist
//
//  Created by MANBEER KAUR on 2020-03-06.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        readPlistData()
        // Do any additional setup after loading the view.
    }
    func readPlistData(){
           if let bundlePath = Bundle.main.path(forResource: "DemoPlist", ofType: "plist"){
               //print(bundlePath)
               if let  dictionary = NSMutableDictionary(contentsOfFile: bundlePath){
                   //print(dictionary)
                   if let countries = dictionary["countries"] as? [String]{
                       for v in countries{
                           print(v)
                       }
                   }
                if let u = dictionary["users"]as?[[String:String]]{
                var flag = false
                    for user in u {
                        if user["username"] == "abc@123" && user["password"] == "man"{
                            flag = true
                        }
                    }
                    if flag == true{
                        print("valid user")
                    }else{
                        print("invalid user")
                    }
                }
               }
           }
       }
       


}

