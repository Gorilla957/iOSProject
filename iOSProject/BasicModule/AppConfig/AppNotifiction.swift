//
//  AppNotifiction.swift
//  iOSProject
//
//  Created by apple on 2020/12/3.
//

import Foundation

/// 通知名称
extension Notification.Name {
    struct AppName {
        /// 用户登录成功
        static let LoginSuccess = NSNotification.Name.init("LoginSuccess_Notifiction_Name")
        
        /// 用户登出
        static let Logout = NSNotification.Name.init("Logout_Notifiction_Name")
    }
}
