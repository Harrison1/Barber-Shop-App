import UIKit


class navigationCont: UIViewController {

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var navbar: UINavigationBar
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "homepg1")!)
    }
    
    func navBackground(){
        //self.navigationController?.navigationBar.setBackgroundImage(,forBarMetrics:.Default)
        //self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "navbar1"), forBarMetrics: .Default)
        
        //  UINavigationBar.appearance().setBackgroundImage(UIImage(named:"navbar"), forBarMetrics: UIBarMetrics.Default)
        
        navigationController?.navigationBar.barTintColor = UIColor.greenColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}