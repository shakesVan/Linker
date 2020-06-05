//
//  UIButton+UICreable.swift
//  
//
//  Created by xiaoyao on 2017/12/6.
//  Copyright © 2017年 xiaoyao. All rights reserved.
//

import UIKit

extension LinkerWarper where Base : UIButton{
    
    // MARK: Button targer
    @discardableResult
    public func clickTarget(_ target: AnyObject?, action: Selector) -> Self {
        base.addTarget(target, action: action, for: .touchUpInside)
        return self
    }
    
    @discardableResult
    public func target(_ target: AnyObject?, action: Selector, forControlEvents: UIControl.Event) -> Self {
        base.addTarget(target, action: action, for: forControlEvents)
        return self
    }
    
    // MARK: button title
    @discardableResult
    public func title(_ value: String, state: UIControl.State) -> Self {
        base.setTitle(value, for: state)
        return self
    }
    
    @discardableResult
    public func nomalStateTitle(_ value: String) -> Self {
        base.setTitle(value, for: .normal)
        return self
    }
    
    @discardableResult
    public func highlightedStateTitle(_ value: String) -> Self {
        base.setTitle(value, for: .highlighted)
        return self
    }
    
    @discardableResult
    public func selectedStateTitle(_ value: String) -> Self {
        base.setTitle(value, for: .selected)
        return self
    }
    
    // MARK: button title color
    @discardableResult
    public func titleColor(_ value: UIColor?, state: UIControl.State) -> Self {
        base.setTitleColor(value, for: state)
        return self
    }
    
    @discardableResult
    public func nomalStateTitleColor(_ value: UIColor?) -> Self {
        base.setTitleColor(value, for: .normal)
        return self
    }
    
    @discardableResult
    public func highlightedStateTitleColor(_ value: UIColor?) -> Self {
        base.setTitleColor(value, for: .highlighted)
        return self
    }
    
    @discardableResult
    public func selectedStateTitleColor(_ value: UIColor?) -> Self {
        base.setTitleColor(value, for: .selected)
        return self
    }
    
    // MARK: button title shadow color
    @discardableResult
    public func titleShadowColor(_ value: UIColor, state: UIControl.State) -> Self {
        base.setTitleShadowColor(value, for: state)
        return self
    }
    
    @discardableResult
    public func nomalStateTitleShadowColor(_ value: UIColor?) -> Self {
        base.setTitleShadowColor(value, for: .normal)
        return self
    }
    
    @discardableResult
    public func highlightedStateTitleShadowColor(_ value: UIColor?) -> Self {
        base.setTitleShadowColor(value, for: .highlighted)
        return self
    }
    
    @discardableResult
    public func selectedStateTitleShadowColor(_ value: UIColor) -> Self {
        base.setTitleShadowColor(value, for: .selected)
        return self
    }
    
    
    // MARK: button image
    @discardableResult
    public func image(_ value: UIImage?, state: UIControl.State) -> Self {
        base.setImage(value, for: state)
        return self
    }
    
    @discardableResult
    public func nomalStateImage(_ value: UIImage?) -> Self {
        base.setImage(value, for: .normal)
        return self
    }
    
    @discardableResult
    public func highlightedStateImage(_ value: UIImage?) -> Self {
        base.setImage(value, for: .highlighted)
        return self
    }
    
    @discardableResult
    public func selectedStateImage(_ value: UIImage?) -> Self {
        base.setImage(value, for: .selected)
        return self
    }
    
    // MARK: button background image
    @discardableResult
    public func backgroundImage(_ image: UIImage, state: UIControl.State) -> Self {
        base.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func nomalStateBackgroundImage(_ value: UIImage) -> Self {
        base.setBackgroundImage(value, for: .normal)
        return self
    }
    
    @discardableResult
    public func highlightedStateBackgroundImage(_ value: UIImage) -> Self {
        base.setBackgroundImage(value, for: .highlighted)
        return self
    }
    
    @discardableResult
    public func selectedStateBackgroundImage(_ value: UIImage) -> Self {
        base.setBackgroundImage(value, for: .selected)
        return self
    }
    
    // MARK: button Attributed Title
    @discardableResult
    public func attributedTitle(_ attr: NSAttributedString, state: UIControl.State) -> Self {
        base.setAttributedTitle(attr, for: state)
        return self
    }
    
    @discardableResult
    public func normalStateAttributedTitle(_ attr: NSAttributedString) -> Self {
        base.setAttributedTitle(attr, for: .normal)
        return self
    }
    
    @discardableResult
    public func selectedStateAttributedTitle(_ attr: NSAttributedString) -> Self {
        base.setAttributedTitle(attr, for: .selected)
        return self
    }
    
    @discardableResult
    public func highLightedStateAttributedTitle(_ attr: NSAttributedString) -> Self {
        base.setAttributedTitle(attr, for: .highlighted)
        return self
    }
    
    @discardableResult
    public func font(_ value : UIFont?)->LinkerWarper{
        base.titleLabel?.font = value
        return self
    }
    
    @discardableResult
    public func imageEdge(_ value : UIEdgeInsets)->LinkerWarper{
        base.imageEdgeInsets = value
        return self
    }
    
    @discardableResult
    public func titleEdge(_ value : UIEdgeInsets)->LinkerWarper{
        base.titleEdgeInsets = value
        return self
    }
    
    @discardableResult
    public func textAlignment(_ value : NSTextAlignment)->LinkerWarper{
        base.titleLabel?.textAlignment = value
        return self
    }
}

extension LinkerWarper where Base : UIButton{
    
    public typealias CustomButtonAction = (UIButton) -> ()
    
    //快速添加点击事件
    @discardableResult
    public func addTapAction(_ action:@escaping CustomButtonAction)->LinkerWarper{
        base.addTapAction(action)
        return self
    }
}
