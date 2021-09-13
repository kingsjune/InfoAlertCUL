//
//  ViewController.swift
//  InfoAlertCUL
//
//  Created by bhj7@kakao.com on 09/13/2021.
//  Copyright (c) 2021 bhj7@kakao.com. All rights reserved.
//

import UIKit
import InfoAlertCUL
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonClick(_ sender: Any) {
        InfoAlertView().show(in: self.view)
    }
    
}

