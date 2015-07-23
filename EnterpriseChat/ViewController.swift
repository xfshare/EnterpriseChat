//
//  ViewController.swift
//  EnterpriseChat
//
//  Created by mac on 15/7/20.
//  Copyright © 2015年 VKan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bgImageView: UIImageView!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        // Do any additional setup after loading the view, typically from a nib.
        createUI();
    }
    
    func createUI(){
        
        //bg imageView
        bgImageView.image = UIImage.getBackgroundImageName("LaunchImage_")
        
        
        //login
        loginButton.setTitle(VKLocalString("login"), forState: UIControlState.Normal)
        loginButton.setBackgroundImage(UIImage(named: "OpBigBtn")?.getScaleImage(), forState: UIControlState.Normal)
        loginButton.setBackgroundImage(UIImage(named: "OpBigBtnHighlight")?.getScaleImage(), forState: UIControlState.Highlighted)
        loginButton.addTarget(self, action: Selector("loginAction"), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        //register
        registerButton.setTitle(VKLocalString("register"), forState: UIControlState.Normal)
        registerButton.setBackgroundImage(UIImage(named: "GreenBigBtn")?.getScaleImage(), forState: UIControlState.Normal)
        registerButton.setBackgroundImage(UIImage(named: "GreenBigBtnHighlight")?.getScaleImage(), forState: UIControlState.Highlighted)
        registerButton.addTarget(self, action: Selector("registerAction"), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    //action
    //login action
    func loginAction(){
        print("loginAction")
        let phonenumberLogin:PhoneNumberLogin = PhoneNumberLogin(nibName: "PhoneNumberLogin", bundle: nil)
        self.presentViewController(phonenumberLogin, animated: true, completion: nil)
        
    }
    
    //register action
    func registerAction(){
        print("registerAction")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

