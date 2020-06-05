//
//  UIView+UICreable.swift
//
//
//  Created by xiaoyao on 2017/12/6.
//  Copyright © 2017年 xiaoyao. All rights reserved.
//

import UIKit

extension LinkerWarper where Base : UIView {
    
    public static func view(_ frame: CGRect = CGRect.zero) -> Self {
        return Base(frame: frame).link
    }
    
    @discardableResult
    public func frame(_ frame: CGRect) -> Self {
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func frame( _ x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat) -> Self {
        return frame(CGRect(x: x, y: y, width: w, height: h))
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ value: Bool) -> Self {
        base.isUserInteractionEnabled = value
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ value: UIColor?) -> Self {
        base.backgroundColor = value
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ value: CGFloat) -> Self {
        base.layer.cornerRadius = value
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ value: Bool) -> Self {
        base.layer.masksToBounds = value
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ radius: CGFloat, _ masks: Bool) -> Self {
        return cornerRadius(radius)
            .masksToBounds(masks)
    }
    
    @discardableResult
    public func cornerRadiusHalfHeight() -> Self {
        base.layer.cornerRadius = base.frame.height / 2.0
        return self
    }
    
    @discardableResult
    public func borderWidth(_ width: CGFloat) -> Self {
        base.layer.borderWidth = width
        return self
    }
    @discardableResult
    public func borderColor(_ color: UIColor) -> Self {
        base.layer.borderColor = color.cgColor
        return self
    }
    @discardableResult
    public func border(_ width: CGFloat, _ color: UIColor) -> Self {
        return borderWidth(width).borderColor(color)
    }
    
    @discardableResult
    public func hidden(_ value: Bool) -> Self {
        base.isHidden = value
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ value: Bool) -> Self {
        base.clipsToBounds = value
        return self
    }
    
    @discardableResult
    public func tag(_ value: NSInteger) -> Self {
        base.tag = value
        return self
    }
    
    @discardableResult
    public func addTo(_ superview: UIView) -> Self {
        superview.addSubview(base)
        return self
    }
    
    @discardableResult
    public func addSubview(_ view: UIView) -> Self {
        base.addSubview(view)
        return self
    }
    
    @discardableResult
    public func alpha(_ value: CGFloat) -> Self {
        base.alpha = value
        return self
    }
    
}


extension LinkerWarper where Base : UIView {
    
    /// 通过名字去nib中取view，不传默认，使用类名
    public static func nibView(with name: String = UIView.className) -> Self {
        let nib = UINib.init(nibName: name, bundle: nil)
        let base = nib.instantiate(withOwner: nil, options: nil).last as! Base
        return base.link
    }
}

