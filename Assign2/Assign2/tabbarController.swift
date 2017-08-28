//
//  tabbarController.swift
//  
//
//  Created by Abe Rodriguez on 10/19/15.
//
//

import UIKit

class tabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //
    // Code to support Upside Down orientation.
    //
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return [.Landscape,.AllButUpsideDown]
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
