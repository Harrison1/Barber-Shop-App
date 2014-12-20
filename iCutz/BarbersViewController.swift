import UIKit
import MessageUI

class BarbersViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    @IBAction func theCallMeButtonMethod(sender: AnyObject) {
        
        let alert = UIAlertController(title: "Contact Vin", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "call", style: .Default, handler: { (action: UIAlertAction!) in
            let phone = "tel://7869852889"
            let url = NSURL(string: phone)!
            UIApplication.sharedApplication().openURL(url)
        }))
        
        alert.addAction(UIAlertAction(title: "email", style: .Default, handler: { (action: UIAlertAction!) in
            var emailTitle = "Hello iCutz"
            var messageBody = "Hey Vin,"
            var toRecipents = ["hmcguire13@gmail.com"]
            var mc: MFMailComposeViewController = MFMailComposeViewController()
            mc.mailComposeDelegate = self
            mc.setSubject(emailTitle)
            mc.setMessageBody(messageBody, isHTML: false)
            mc.setToRecipients(toRecipents)
            
            self.presentViewController(mc, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "cancel", style: .Default, handler: { (action: UIAlertAction!) in
            println("Handle Cancel Logic here")
        }))
        
        presentViewController(alert, animated: true, completion: nil)
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
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}