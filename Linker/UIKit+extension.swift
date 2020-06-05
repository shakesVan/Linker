//
//  UIKit+extension.swift
//  23
//
//  Created by edz on 2020/6/2.
//  Copyright © 2020 ddcx. All rights reserved.
//

import UIKit

extension UIView {
    public static var className: String {
        return String(type(of: Self()).description()
        .split(separator: ".").last ?? "")
    }
    
    /// 通过名字去取view，不传默认使用类名
    static func nibView(_ name: String? = nil) -> Self {
        let name = name ?? className
        let nib = UINib.init(nibName: name, bundle: nil)
        return nib.instantiate(withOwner: nil, options: nil).last as! Self
    }
}

// 方位
public extension UIView {
    
    var xy_x: CGFloat {
        get { frame.origin.x }
        set { frame.origin.x = newValue }
    }
    
    var xy_y: CGFloat {
        get { frame.origin.y }
        set { frame.origin.y = newValue }
    }
    
    var xy_width: CGFloat {
        get { frame.size.width }
        set { frame.size.width = newValue }
    }
    
    var xy_height: CGFloat {
        get { frame.size.height }
        set { frame.size.height = newValue }
    }
    
    var xy_origin: CGPoint {
        get { frame.origin }
        set { frame.origin = newValue }
    }
    
    var xy_size: CGSize {
        get { frame.size }
        set { frame.size = newValue }
    }
}

extension UIScreen {
    public static var width: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    public static var height: CGFloat {
        return UIScreen.main.bounds.size.height
    }
}


extension UIDevice {
    /// 是否有刘海
    public static var isHasBang: Bool {
        
        let scale1 = CGFloat(2688) / CGFloat(1242)
        let scale2 = CGFloat(2436) / CGFloat(1125)
        let scale3 = CGFloat(1792) / CGFloat(828)
        let deviceSize = UIScreen.main.bounds.size
        let scale = deviceSize.height / deviceSize.width
        
        if scale == scale1 || scale == 1 / scale1 {
            return true
        }
        
        if scale == scale2 || scale == 1 / scale2 {
            return true
        }
        
        if scale == scale3 || scale == 1 / scale3 {
            return true
        }
        return false
    }
    
    public static var statusBarHeight: CGFloat {
        return isHasBang ? 44 : 20
    }
    
    public static var navBarHeight: CGFloat {
        return isHasBang ? 84 : 64
    }
    
    /// 刘海状态栏高度 - 非刘海状态栏高度
    public static var moreXStatusHeight: CGFloat {
        return isHasBang ? 24 : 0
    }
}
