//
//  UIImageView+UICreable.swift
//  
//
//  Created by xiaoyao on 2017/12/6.
//  Copyright © 2017年 xiaoyao. All rights reserved.
//

import UIKit


extension LinkerWarper where Base : UIImageView{
    
    @discardableResult
    static public func create(_ imageName : String) -> Self {
        return Base.init(image: UIImage.init(named: imageName)).link
    }
    
    @discardableResult
    static public func create(_ image : UIImage?)-> LinkerWarper {
        return Base.init(image: image).link
    }
    

    @discardableResult
    @available(iOS 3.0, *)
    public func highlightedImage(_ value: UIImage?) -> Self {
        base.highlightedImage = value
        return self
    }
    

    @discardableResult
    public func highlighted(_ value: Bool) -> Self {
        base.isHighlighted = value
        return self
    }
    

    @discardableResult
    public func animationImages(_ value: [UIImage]?) -> Self {
        base.animationImages = value
        return self
    }
    

    @discardableResult
    @available(iOS 3.0, *)
    public func highlightedAnimationImages(_ value: [UIImage]?) -> Self {
        base.highlightedAnimationImages = value
        return self
    }
    

    @discardableResult
    public func animationDuration(_ value: TimeInterval) -> Self {
        base.animationDuration = value
        return self
    }
    

    @discardableResult
    public func animationRepeatCount(_ value: Int) -> Self {
        base.animationRepeatCount = value
        return self
    }
    
}
