//
//  UIImageExtend.swift
//  EnterpriseChat
//
//  Created by mac on 15/7/20.
//  Copyright © 2015年 VKan. All rights reserved.
//

import Foundation
import UIKit
extension UIImage {
    
    func getScaleImage() -> UIImage{
        let top:CGFloat = self.size.height / 2.0
        let bottom:CGFloat = self.size.height / 2.0
        let left:CGFloat = self.size.width / 2.0
        let right:CGFloat = self.size.width / 2.0
        let insets = UIEdgeInsetsMake(top, left, bottom, right)
        
        return self.resizableImageWithCapInsets(insets, resizingMode: UIImageResizingMode.Tile)
    }
    
    class func getBackgroundImageName(name:String) -> UIImage{
        
        var imagename:String = name
        switch (vk_getCurrentDeviceModel()){
        case VKDeviceModel.IPHONE_4S:
            imagename += "ip4"
        case VKDeviceModel.IPHONE_5:
            imagename += "ip5"
        case VKDeviceModel.IPHONE_6:
            imagename += "ip6"
        case VKDeviceModel.IPHONE_6Plus:
            imagename += "ip6P"
        }
        
        return UIImage(named: imagename)!
    }
}