//
//  UIView+Nib.swift
//  iOSProject
//
//  Created by apple on 2020/12/9.
//

import UIKit

//MARK: 使用xib创建页面
/// 方案一
extension UIView {
    class func fromNib(named: String? = nil) -> Self {
        let name = named ?? "\(Self.self)"
        
        guard
            let nib = Bundle.main.loadNibNamed(name, owner: nil, options: nil)
        else {
            fatalError("missing expected nib named:\(name)")
        }
        
        guard
            let view = nib.first as? Self
        else {
            fatalError("view of type \(Self.self) not found in \(nib)")
        }
        
        return view
    }
}

/// 方案二
public protocol NibInstantiatable {
    static func nibName() -> String
}

extension NibInstantiatable {
    static func nibName() -> String {
        return String(describing: self)
    }
}

extension NibInstantiatable where Self: UIView {
    static func fromNib() -> Self {
        
        let boundle = Bundle(for: self)
        
        let nib = boundle.loadNibNamed(nibName(), owner: self, options: nil)
        
        return nib!.first as! Self
    }
}

