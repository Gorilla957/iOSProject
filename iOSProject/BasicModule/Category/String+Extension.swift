//
//  String+Extension.swift
//  iOSProject
//
//  Created by apple on 2020/12/3.
//

import Foundation

//MARK: 国际化文件
extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
