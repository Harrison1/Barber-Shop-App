import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "homepg")!)
        
        
        
        let url = "http://instagram.com/icutzmiami"
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
