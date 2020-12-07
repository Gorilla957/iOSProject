//
//  UIButton+TouchArea.swift
//  iOSProject
//
//  Created by apple on 2020/12/7.
//

import UIKit

extension UIButton {
    
    fileprivate struct TouchAreaRuntimeKey {
        /// 两种方法不能同时有效
        static let clickArea = UnsafeRawPointer.init(bitPattern: "clickArea".hashValue)//点击区域扩大倍数
        static let enlargeTouchArea = UnsafeRawPointer.init(bitPattern: "EnlargeTouchArea".hashValue)//点击区域扩大边距
    }
    
    var clickArea: String? {
        set {
            objc_setAssociatedObject(self, UIButton.TouchAreaRuntimeKey.clickArea!, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        get {
            return objc_getAssociatedObject(self, UIButton.TouchAreaRuntimeKey.clickArea!) as? String
        }
    }
    
    var enlargeRect: UIEdgeInsets? {
        set {
            objc_setAssociatedObject(self, UIButton.TouchAreaRuntimeKey.enlargeTouchArea!, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        get {
            return objc_getAssociatedObject(self, UIButton.TouchAreaRuntimeKey.enlargeTouchArea!) as? UIEdgeInsets
        }
    }
    
//    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
//        super.point(inside: point, with: event)
//
//        var bounds = self.bounds
//        if let clickArea = self.clickArea {
//            let erea = CGFloat((clickArea as NSString).floatValue)
//
//            let widthDelta = max(erea * bounds.size.width - bounds.size.width, 0)
//            let heightDelta = max(erea * bounds.size.height - bounds.size.height, 0)
//
//            //扩大Bounds
//            bounds = bounds.insetBy(dx: -0.5 * widthDelta, dy: -0.5 * heightDelta)
//        }
//
//        return bounds.contains(point)
//    }
    
    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        
        let width: CGFloat = (self.bounds.size.width + (self.enlargeRect?.left ?? 0.0) + (self.enlargeRect?.right ?? 0.0))
        let height: CGFloat = (self.bounds.size.height + (self.enlargeRect?.top ?? 0.0) + (self.enlargeRect?.bottom ?? 0.0))
        let rect: CGRect = CGRect.init(x: ( -(self.enlargeRect?.left ?? 0.0)),
                                       y: ( -(self.enlargeRect?.top ?? 0.0)),
                                       width: width,
                                       height: height)
        
        return rect.contains(point) ? self:nil
    }
}
