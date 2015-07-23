//
//  PhoneNumberLogin.swift
//  EnterpriseChat
//
//  Created by mac on 15/7/21.
//  Copyright © 2015年 VKan. All rights reserved.
//

import UIKit

class PhoneNumberLogin: UIViewController {

    @IBOutlet var vkDismissButton: UIButton!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?){
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor! = UIColor(colorLiteralRed: 0.5, green: 0.2, blue: 1.0, alpha: 1.0)
        
        vk_createUI()
    }
    
    
    
    //MARK:- dismiss
    func vk_dismissViewController(){
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        };
    }
    
    //MARK:- CreateUI
    func vk_createUI(){
        vkDismissButton.addTarget(self, action: Selector("vk_dismissViewController"), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
