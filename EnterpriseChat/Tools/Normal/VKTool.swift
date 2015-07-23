//
//  VKTool.swift
//  EnterpriseChat
//
//  Created by mac on 15/7/20.
//  Copyright © 2015年 VKan. All rights reserved.
//

import Foundation
import UIKit

enum VKDeviceModel{
    case IPHONE_4S
    case IPHONE_5
    case IPHONE_6
    case IPHONE_6Plus
}

//: 获取当前设备
func vk_getCurrentDeviceModel() -> VKDeviceModel{
    let ip4SRect:CGRect = CGRectMake(0, 0, 640 / 2.0, 960 / 2.0)
    let ip5Rect:CGRect = CGRectMake(0, 0, 640 / 2.0, 1136 / 2.0)
    let ip6Rect:CGRect = CGRectMake(0, 0, 750 / 2.0, 1334 / 2.0)
    let ip6PRect:CGRect = CGRectMake(0, 0, 1242 / 3.0, 2208 / 3.0)
    let currentDevice:CGRect = UIScreen.mainScreen().bounds;

    var model:VKDeviceModel!
    if(currentDevice == ip4SRect){
        model = .IPHONE_4S
    }
    else if(currentDevice == ip5Rect){
        model = .IPHONE_5
    }
    else if(currentDevice == ip6Rect){
        model = .IPHONE_6
    }
    else if(currentDevice == ip6PRect){
        model = .IPHONE_6Plus
    }

    return model;
}