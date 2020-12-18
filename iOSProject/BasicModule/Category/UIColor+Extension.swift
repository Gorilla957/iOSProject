//
//  UIColor+Extension.swift
//  iOSProject
//
//  Created by apple on 2020/12/8.
//

import UIKit

extension UIColor {
    static func hexColor (_ hexColor:String, alpha: CGFloat = 1) -> UIColor {
        let tempStr = hexColor.trimmingCharacters(in: .whitespacesAndNewlines)
        let hexint = intFromHexString(tempStr)
        let color = UIColor(red: ((CGFloat) ((hexint & 0xFF0000) >> 16))/255, green: ((CGFloat) ((hexint & 0xFF00) >> 8))/255, blue: ((CGFloat) (hexint & 0xFF))/255, alpha: alpha)
        return color
    }
    
    func toHex() -> String {
       let components = self.cgColor.components
       let r: CGFloat = components?[0] ?? 0.0
       let g: CGFloat = components?[1] ?? 0.0
       let b: CGFloat = components?[2] ?? 0.0

       let hexString = String.init(format: "#%02lX%02lX%02lX", lroundf(Float(r * 255)), lroundf(Float(g * 255)), lroundf(Float(b * 255)))
       print(hexString)
       return hexString
    }
    
    /// 左右渐变色
    public static func gradient(left:UIColor,right:UIColor,rect:CGRect)->CAGradientLayer{
        func gradientLayer(rect:CGRect)->CAGradientLayer{
            let colorLayer = CAGradientLayer()
            colorLayer.frame = rect
            colorLayer.colors = [left.cgColor,right.cgColor]
            colorLayer.startPoint = CGPoint(x: 0, y: 0.5)
            colorLayer.endPoint = CGPoint(x: 1, y: 0.5)
            return colorLayer
        }
        return gradientLayer(rect: rect)
    }
    
    /// 随机颜色
    public static func randrom() -> UIColor {
        let r = CGFloat(arc4random()%256)/255.0
        let g = CGFloat(arc4random()%256)/255.0
        let b = CGFloat(arc4random()%256)/255.0
        if #available(iOS 10.0, *) {
            let color = UIColor(displayP3Red: r, green: g, blue: b, alpha: 1)
            return color
        } else {
            // Fallback on earlier versions
            return UIColor(red: r, green: g, blue: b, alpha: 1)
        }
    }
    
    /// 从Hex装换int
    private class func intFromHexString(_ hexString:String)->UInt32{
        let scanner = Scanner(string: hexString)
        scanner.charactersToBeSkipped = CharacterSet(charactersIn: "#")
        var result : UInt32 = 0
        scanner.scanHexInt32(&result)
        return result
    }
}
