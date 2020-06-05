//
//  UITextField+UICreable.swift
//  
//
//  Created by xiaoyao on 2017/12/6.
//  Copyright © 2017年 xiaoyao. All rights reserved.
//

import UIKit

extension LinkerWarper where Base : UITextField {
    
    @discardableResult
    public func text(_ value: String?) -> Self {
        base.text = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    public func attributedText(_ value: NSAttributedString?) -> Self {
        base.attributedText = value
        return self
    }
    
    @discardableResult
    public func textColor(_ value: UIColor?) -> Self {
        base.textColor = value
        return self
    }
    
    @discardableResult
    public func font(_ value: UIFont?) -> Self {
        base.font = value
        return self
    }
    
    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        base.textAlignment = value
        return self
    }
    
    @discardableResult
    public func borderStyle(_ value: UITextField.BorderStyle) -> Self {
        base.borderStyle = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    public func defaultTextAttributes(_ value: [String : AnyObject]) -> Self {
        base.defaultTextAttributes = convertToNSAttributedStringKeyDictionary(value)
        return self
    }
    
    @discardableResult
    public func placeholder(_ value: String?) -> Self {
        base.placeholder = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    public func attributedPlaceholder(_ value: NSAttributedString?) -> Self {
        base.attributedPlaceholder = value
        return self
    }
    
    @discardableResult
    public func clearsOnBeginEditing(_ value: Bool) -> Self {
        base.clearsOnBeginEditing = value
        return self
    }
    
    @discardableResult
    public func adjustsFontSizeToFitWidth(_ value: Bool) -> Self {
        base.adjustsFontSizeToFitWidth = value
        return self
    }
    
    @discardableResult
    public func minimumFontSize(_ value: CGFloat) -> Self {
        base.minimumFontSize = value
        return self
    }
    
    @discardableResult
    public func delegate(_ value: UITextFieldDelegate?) -> Self {
        base.delegate = value
        return self
    }
    
    @discardableResult
    public func background(_ value: UIImage?) -> Self {
        base.background = value
        return self
    }
    
    @discardableResult
    public func disabledBackground(_ value: UIImage?) -> Self {
        base.disabledBackground = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    public func allowsEditingTextAttributes(_ value: Bool) -> Self {
        base.allowsEditingTextAttributes = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    public func typingAttributes(_ value: [String : AnyObject]?) -> Self {
        base.typingAttributes = convertToOptionalNSAttributedStringKeyDictionary(value)
        return self
    }
    
    @discardableResult
    public func clearButtonMode(_ value: UITextField.ViewMode) -> Self {
        base.clearButtonMode = value
        return self
    }
    
    @discardableResult
    public func leftView(_ value: UIView?) -> Self {
        base.leftView = value
        return self
    }
    
    @discardableResult
    public func leftViewMode(_ value: UITextField.ViewMode) -> Self {
        base.leftViewMode = value
        return self
    }
    
    @discardableResult
    public func rightView(_ value: UIView?) -> Self {
        base.rightView = value
        return self
    }
    
    @discardableResult
    public func rightViewMode(_ value: UITextField.ViewMode) -> Self {
        base.rightViewMode = value
        return self
    }
    
    @discardableResult
    public func inputView(_ value: UIView?) -> Self {
        base.inputView = value
        return self
    }
    
    @discardableResult
    public func inputAccessoryView(_ value: UIView?) -> Self {
        base.inputAccessoryView = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    public func clearsOnInsertion(_ value: Bool) -> Self {
        base.clearsOnInsertion = value
        return self
    }
}



fileprivate func convertToNSAttributedStringKeyDictionary(_ input: [String: Any]) -> [NSAttributedString.Key: Any] {
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}


fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}
