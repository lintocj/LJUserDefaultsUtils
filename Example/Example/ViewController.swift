//
//  ViewController.swift
//  EXample
//
//  Created by linto jacob on 18/07/20.
//  Copyright © 2020 linto. All rights reserved.
//

import UIKit
import LJUserDefaultsUtils
class ViewController: UIViewController {

    
     let UserDefaults = UserDefaultsUtils()
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.setBoolData(boolValue: true, dataName: "Test")
        // Do any additional setup after loading the view.
    }


}

