//
//  Array+Extension.swift
//  iOSProject
//
//  Created by apple on 2020/12/9.
//

import Foundation

//MARK: 防止数组越界
extension Array {
    subscript (safe index: Index) -> Element? {
        return (0 ..< count).contains(index) ? self[index] : nil
    }
}
