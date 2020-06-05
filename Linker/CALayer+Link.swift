//
//  CALayer+LinkCreate.swift
//  23
//
//  Created by xiaoyao on 2020/5/27.
//  Copyright © 2020 ddcx. All rights reserved.
//

import Foundation

extension LinkerWarper where Base : CALayer {
    @discardableResult
    public func borderWidth(_ width: CGFloat) -> Self {
        base.borderWidth = width
        return self
    }
    
    @discardableResult
    public func borderColor(_ color: UIColor) -> Self {
        base.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ radius: CGFloat) -> Self {
        base.cornerRadius = radius
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ value: Bool) -> Self {
        base.masksToBounds = value
        return self
    }
    
    @discardableResult
    public func shadowColor(_ color: UIColor, _ alpha: CGFloat = 1) -> Self {
        base.shadowColor = color.withAlphaComponent(alpha).cgColor
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ size: CGSize) -> Self {
        base.shadowOffset = size
        return self
    }
    @discardableResult
    public func shadowOpacity(_ opacity: Float) -> Self {
        base.shadowOpacity = opacity
        return self
    }
    
    @discardableResult
    public func shadowRadius(_ radius: CGFloat) -> Self {
        base.shadowRadius = radius
        return self
    }
    
    @discardableResult
    public func shadowPath(_ path: UIBezierPath) -> Self {
        base.shadowPath = path.cgPath
        return self
    }
    
    @discardableResult
    func shadowPath(_ size: CGSize, _ cornerRadius: CGFloat) -> Self {
        base.shadowPath = UIBezierPath(roundedRect: CGRect(origin: CGPoint.zero, size: size), cornerRadius: cornerRadius).cgPath
        return self
    }
    
    @discardableResult
    func setShadow(size: CGSize, shadowRadius: CGFloat = 7, alpha: CGFloat = 0.08, color: UIColor = UIColor.black) -> Self {
        base.setShadow(size: size, shadowRadius: shadowRadius, alpha: alpha, color: color)
        return self
    }
}

extension CALayer {
    @discardableResult
    func setShadow(size: CGSize, shadowRadius: CGFloat = 7, alpha: CGFloat = 0.08, color: UIColor = UIColor.black) -> Self {
        masksToBounds = false
        shadowColor = color.withAlphaComponent(alpha).cgColor
        shadowOpacity = 1
        
        shadowOffset = CGSize(width: 0, height: 0)
        self.shadowRadius = shadowRadius
        
        shadowPath = UIBezierPath(roundedRect: CGRect(origin: CGPoint.zero, size: size), cornerRadius: cornerRadius).cgPath
        return self
    }
    
//    func setShadow(size: CGSize, shadowRadius: CGFloat = 7, alpha: CGFloat = 0.08, color: UIColor = UIColor.black) -> Self {
//        let left: CGFloat = 3
//        let top: CGFloat = 10
//        let bounds = CGRect(x: left, y: top, width: size.width - left * 2, height: size.height - 15 + 3)
//        masksToBounds = false
//        shadowColor = color.withAlphaComponent(alpha).cgColor
//        shadowOpacity = 1
//
//        shadowOffset = CGSize(width: 0, height: 3)
//        self.shadowRadius = shadowRadius
//
//        let offset: CGFloat = -1
//        let rect = CGRect(x: offset, y: offset, width: bounds.size.width+offset*2, height: bounds.size.height+offset*2)
//        shadowPath = UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius).cgPath
//        return self
//    }
}
