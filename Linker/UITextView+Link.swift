//
//  UITextView+UICreable.swift
//  
//
//  Created by xiaoyao on 2017/12/6.
//  Copyright © 2017年 xiaoyao. All rights reserved.
//

import UIKit

extension LinkerWarper where Base : UITextView{
    
    @discardableResult
    public func text(_ value: String!) -> Self {
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
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        base.textAlignment = value
        return self
    }
    
    @discardableResult
    public func selectedRange(_ value: NSRange) -> Self {
        base.selectedRange = value
        return self
    }
    
    @discardableResult
    public func editable(_ value: Bool) -> Self {
        base.isEditable = value
        return self
    }
    
    
    @available(iOS 7.0, *)
    @discardableResult
    public func selectable(_ value: Bool) -> Self {
        base.isSelectable = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    public func dataDetectorTypes(_ value: UIDataDetectorTypes) -> Self {
        base.dataDetectorTypes = value
        return self
    }
    
    // defaults to NO
    @available(iOS 6.0, *)
    @discardableResult
    public func allowsEditingTextAttributes(_ value: Bool) -> Self {
        base.allowsEditingTextAttributes = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    public func attributedText(_ value: NSAttributedString!) -> Self {
        base.attributedText = value
        return self
    }
    

    @available(iOS 6.0, *)
    @discardableResult
    public func typingAttributes(_ value: [String : AnyObject]) -> Self {
        base.typingAttributes = convertToNSAttributedStringKeyDictionary(value)
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
    public func clearsOnInsertion(_ value:Bool) -> Self {
        base.clearsOnInsertion = value
        return self
    }
    

    @available(iOS 7.0, *)
    @discardableResult
    public func textContainerInset(_ value:UIEdgeInsets) -> Self {
        base.textContainerInset = value
        return self
    }
    

    @available(iOS 7.0, *)
    @discardableResult
    public func linkTextAttributes(_ value:[String : AnyObject]!) -> Self {
        base.linkTextAttributes = convertToOptionalNSAttributedStringKeyDictionary(value)
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
