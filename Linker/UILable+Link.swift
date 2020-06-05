//
//  UILable+UICreable.swift
//  
//
//  Created by xiaoyao on 2017/12/6.
//  Copyright © 2017年 xiaoyao. All rights reserved.
//

import UIKit

extension LinkerWarper where Base : UILabel{
    
    @discardableResult
    public func text(_ value: String?) -> Self {
        base.text = value
        return self
    }
    
    @discardableResult
    public func font(_ value: UIFont?) -> Self {
        base.font = value
        return self
    }
    
    
    @discardableResult
    public func textColor(_ value: UIColor?) -> Self {
        base.textColor = value
        return self
    }
    
    @discardableResult
    public func shadowColor(_ value: UIColor?) -> Self {
        base.shadowColor = value
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ value: CGSize) -> Self {
        base.shadowOffset = value
        return self
    }
    
    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        base.textAlignment = value
        return self
    }
    
    @discardableResult
    public func lineBreakMode(_ value: NSLineBreakMode) -> Self {
        base.lineBreakMode = value
        return self
    }
    
    @discardableResult
    @available(iOS 6.0, *)
    public func attributedText(_ value: NSAttributedString?) -> Self {
        base.attributedText = value
        return self
    }
    
    @discardableResult
    public func highlightedTextColor(_ value: UIColor?) -> Self {
        base.highlightedTextColor = value
        return self
    }
    
    @discardableResult
    public func highlighted(_ value: Bool) -> Self {
        base.isHighlighted = value
        return self
    }
    
    @discardableResult
    public func enabled(_ value: Bool) -> Self {
        base.isEnabled = value
        return self
    }
    
    @discardableResult
    public func numberOfLines(_ value: Int) -> Self {
        base.numberOfLines = value
        return self
    }
}
