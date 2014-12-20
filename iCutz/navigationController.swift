//
//  navigationController.swift
//  iCutz
//
//  Created by Harrison McGuire on 10/28/14.
//  Copyright (c) 2014 harrisonmcguire. All rights reserved.
//

import UIKit

class navigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.greenColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
