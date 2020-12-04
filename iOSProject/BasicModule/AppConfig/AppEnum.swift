//
//  Enum.swift
//  iOSProject
//
//  Created by apple on 2020/12/3.
//

import Foundation

/// 用户性别
enum GenderType: Int {
    case unkown
    case male
    case female
}


/// App语言
enum AppLanguage: String {
    case zhHk = "zhHk"
    case enUs = "enUs"
    case zhCn = "zhCn"
    
    var toLocalizedFileName: String {
        switch self {
        case .zhHk:
            return "zh-HK"
        case .enUs:
            return "en"
        case .zhCn:
            return "zh-Hans"
        }
    }
}
