import UIKit
import MessageUI


class FirstViewController: UIViewController, MFMailComposeViewControllerDelegate{
    
    var myMail: MFMailComposeViewController!
    
    @IBAction func theCallMeButtonMethod(sender: AnyObject) {
        //let phone = "tel://8775892797"
        //let url = NSURL(string: phone)!
        //UIApplication.sharedApplication().openURL(url)
       
        let alert = UIAlertController(title: "786-985-CUTZ", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "cancel", style: .Default, handler: { (action: UIAlertAction!) in
            println("Handle Cancel Logic here")
        }))
        
        alert.addAction(UIAlertAction(title: "call", style: .Default, handler: { (action: UIAlertAction!) in
            let phone = "tel://7869852889"
            let url = NSURL(string: phone)!
            UIApplication.sharedApplication().openURL(url)
        }))
        
        presentViewController(alert, animated: true, completion: nil)
        
       /* let alert = UIAlertController()
        alert.title = "1800-000-0000"
        alert.addButtonWithTitle("cancel")
        alert.addButtonWithTitle("call")
        alert.show() */
    }
    
    @IBAction func launchEmail(sender: AnyObject) {
        
        var emailTitle = "Hello iCutz"
        //var messageBody = "Feature request or bug report?"
        var toRecipents = ["icutzbshop@gmail.com"]
        var mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(emailTitle)
        //mc.setMessageBody(messageBody, isHTML: false)
        mc.setToRecipients(toRecipents)
        
        self.presentViewController(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(controller:MFMailComposeViewController, didFinishWithResult result:MFMailComposeResult, error:NSError) {
        switch result.value {
        case MFMailComposeResultCancelled.value:
            println("Mail cancelled")
        case MFMailComposeResultSaved.value:
            println("Mail saved")
        case MFMailComposeResultSent.value:
            println("Mail sent")
        case MFMailComposeResultFailed.value:
            println("Mail sent failure: %@", [error.localizedDescription])
        default:
            break
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //navBackground()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "homepg")!)
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    func navBackground(){
     //self.navigationController?.navigationBar.setBackgroundImage(,forBarMetrics:.Default)
        //self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "navbar1"), forBarMetrics: .Default)
        
    //UINavigationBar.appearance().setBackgroundImage(UIImage(named:"navbar"), forBarMetrics: UIBarMetrics.Default)
        
    //navigationController?.navigationBar.barTintColor = UIColor.greenColor()
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

