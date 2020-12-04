//
//  UIView+Extension.swift
//  iOSProject
//
//  Created by apple on 2020/12/3.
//

import UIKit

// MARK: - 常用位置属性
extension UIView {
    
    /// 左边距
    public var left: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    /// 上边距
    public var top: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    /// 宽度
    public var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    /// 高度
    public var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    /// 右边距
    public var right: CGFloat {
        get {
            return self.left + self.width
        }
    }
    
    /// 底边距
    public var bottom: CGFloat {
        get {
            return self.top + self.height
        }
    }
    
    /// 中心X
    public var centerX: CGFloat {
        get {
            return self.center.x
        }
        set {
            var center = self.center
            center.x = newValue
            self.center = center
        }
    }
    
    /// 中心Y
    public var centerY: CGFloat {
        get {
            return self.center.y
        }
        set {
            var center = self.center
            center.y = newValue
            self.center = center
        }
    }
}
