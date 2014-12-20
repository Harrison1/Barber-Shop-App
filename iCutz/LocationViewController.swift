//
//  LocationViewController.swift
//  iCutz
//
//  Created by Harrison McGuire on 10/30/14.
//  Copyright (c) 2014 harrisonmcguire. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "homepg")!)
        
        
        let url = "https://www.google.com/maps/place/iCUTZ+BARBERSHOP/@25.702642,-80.291288,15z/data=!4m2!3m1!1s0x0:0xca4a89b6437fe0b5"
        let requestURL = NSURL(string: url)?
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
