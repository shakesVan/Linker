//
//  UIView+Ectension.swift
//  23
//
//  Created by xiaoyao on 2020/5/22.
//  Copyright © 2020 ddcx. All rights reserved.
//

import Foundation

extension UIView {
    public typealias CustomTapAction = (UITapGestureRecognizer) -> Void
    
    /// 添加点击事件
    /// - Parameter tapAction: 事件
    /// - Returns: 自身
    @discardableResult
    public func addTapGesture(_ tapAction: CustomTapAction?) -> Self {
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(customTapAction(_:)))
        addGestureRecognizer(tap)
        isUserInteractionEnabled = true
        _tapAction = tapAction
        return self
    }
    
    private static var tapActionKey: Bool?
    private var _tapAction: CustomTapAction? {
        get { return objc_getAssociatedObject(self,&Self.tapActionKey) as? CustomTapAction }
        set { objc_setAssociatedObject(self, &Self.tapActionKey, newValue, .OBJC_ASSOCIATION_RETAIN) }
    }
    
    @objc private func customTapAction(_ sender: UITapGestureRecognizer) {
        _tapAction?(sender)
    }
}

extension UIButton {
    public typealias TouchAction = (UIButton) -> Void
    
    /// 添加点击事件
    /// - Parameter tapAction: 事件
    /// - Returns: 自身
    @discardableResult
    public func addTapAction(_ tapAction: TouchAction?) -> Self {
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(tapAction(_:)))
        addGestureRecognizer(tap)
        isUserInteractionEnabled = true
        _tapAction = tapAction
        return self
    }
    
    private static var tapActionKey: Bool?
    private var _tapAction: TouchAction? {
        get { return objc_getAssociatedObject(self,&Self.tapActionKey) as? TouchAction }
        set { objc_setAssociatedObject(self, &Self.tapActionKey, newValue, .OBJC_ASSOCIATION_RETAIN) }
    }
    
    @objc private func tapAction(_ sender: UIButton) {
        _tapAction?(sender)
    }
}

//快速添加手势
extension LinkerWarper where Base : UIView {
    public typealias CustomTapAction = (UITapGestureRecognizer) -> ()
    
    @discardableResult
    public func addTapGesture(action: @escaping CustomTapAction) -> Self {
        base.addTapGesture(action)
        return self
    }
}

//快速添加点击事件
extension LinkerWarper where Base : UIButton {
    public typealias TouchAction = (UIButton) -> ()
    
    @discardableResult
    public func addTapAction(action: @escaping TouchAction) -> Self {
        base.addTapAction(action)
        return self
    }
}
