//
//  ViewController.swift
//  JKBottomSearchExample
//
//  Created by Jarosław Krajewski on 06/04/2018.
//  Copyright © 2018 com.jerronimo. All rights reserved.
//

import UIKit
import JKBottomSearchView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let searchView = JKBottomSearchView()
        view.addSubview(searchView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

