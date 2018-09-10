//
//  ViewController.swift
//  STErrorSDKTest
//
//  Created by oneroot on 2018/9/10.
//  Copyright © 2018年 oneroot. All rights reserved.
//

import UIKit
import STErrorSDK
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.'
        loading.startLoading()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.loading.errorLoading(error: "error occur", tapCallback: {
                print("error occur")
            })
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

