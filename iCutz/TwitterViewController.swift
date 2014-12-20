//
//  TwitterViewController.swift
//  iCutz
//
//  Created by Harrison McGuire on 10/30/14.
//  Copyright (c) 2014 harrisonmcguire. All rights reserved.
//

import UIKit

class TwitterViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "homepg")!)
        
        
        let url = "https://twitter.com/iCutzBarberShop"
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
