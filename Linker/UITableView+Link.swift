//
//  UITableView+UICreable.swift
//  
//
//  Created by xiaoyao on 2017/12/6.
//  Copyright © 2017年 xiaoyao. All rights reserved.
//

import UIKit

extension LinkerWarper where Base : UITableView{
    
    @discardableResult
    public func dataSource(_ value: UITableViewDataSource?) -> Self {
        base.dataSource = value
        return self
    }
    
    @discardableResult
    public func delegate(_ value: UITableViewDelegate?) -> Self {
        base.delegate = value
        return self
    }
    
    @discardableResult
    public func rowHeight(_ value: CGFloat) -> Self {
        base.rowHeight = value
        return self
    }
    
    @discardableResult
    public func sectionHeaderHeight(_ value: CGFloat) -> Self {
        base.sectionHeaderHeight = value
        return self
    }
    
    @discardableResult
    public func sectionFooterHeight(_ value: CGFloat) -> Self {
        base.sectionFooterHeight = value
        return self
    }
    
    @available(iOS 7.0, *)public func estimatedRowHeight(_ value: CGFloat) -> Self {
        base.estimatedRowHeight = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    public func estimatedSectionHeaderHeight(_ value: CGFloat) -> Self {
        base.estimatedSectionHeaderHeight = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    public func estimatedSectionFooterHeight(_ value: CGFloat) -> Self {
        base.estimatedSectionFooterHeight = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    public func separatorInset(_ value: UIEdgeInsets) -> Self {
        base.separatorInset = value
        return self
    }
    
    @available(iOS 3.2, *)
    @discardableResult
    public func backgroundView(_ value: UIView?) -> Self {
        base.backgroundView = value
        return self
    }
    
    @discardableResult
    public func sectionIndexMinimumDisplayRowCount(_ value: Int) -> Self {
        base.sectionIndexMinimumDisplayRowCount = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    public func sectionIndexColor(_ value: UIColor?) -> Self {
        base.sectionIndexColor = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    public func sectionIndexBackgroundColor(_ value: UIColor?) -> Self {
        base.sectionIndexBackgroundColor = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    public func sectionIndexTrackingBackgroundColor(_ value: UIColor?) -> Self {
        base.sectionIndexTrackingBackgroundColor = value
        return self
    }
    
    /// 传入.none 去除cell的分割线
    @discardableResult
    public func separatorStyle(_ value: UITableViewCell.SeparatorStyle) -> Self {
        base.separatorStyle = value
        return self
    }
    
    @discardableResult
    public func separatorColor(_ value: UIColor?) -> Self {
        base.separatorColor = value
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult
    public func separatorEffect(_ value: UIVisualEffect?) -> Self {
        base.separatorEffect = value
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    public func cellLayoutMarginsFollowReadableWidth(_ value: Bool) -> Self {
        base.cellLayoutMarginsFollowReadableWidth = value
        return self
    }
    
    @discardableResult
    public func tableHeaderView(_ value: UIView?) -> Self {
        base.tableHeaderView = value
        return self
    }
    
    @discardableResult
    public func tableFooterView(_ value: UIView?) -> Self {
        base.tableFooterView = value
        return self
    }
    
    
    @available(iOS 9.0, *)
    @discardableResult
    public func remembersLastFocusedIndexPath(_ value: Bool) -> Self {
        base.remembersLastFocusedIndexPath = value
        return self
    }
}
