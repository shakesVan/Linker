//
//  UITableView+identifier.swift
//  23
//
//  Created by edz on 2020/6/2.
//  Copyright © 2020 ddcx. All rights reserved.
//

import Foundation

public extension LinkerWarper where Base : UITableView{
    @discardableResult
    func registerNibCell(_ identifier: String, _ nibName: String? = nil) -> Self {
        base.register(UINib.init(nibName: nibName ?? identifier, bundle: Bundle.main), forCellReuseIdentifier: identifier)
        return self
    }
    
    
    @discardableResult
    func registerNameCell(_ cellClass: UITableViewCell.Type) -> Self {
        base.register(cellClass, forCellReuseIdentifier: cellClass.identifier)
        return self
    }
    
    @discardableResult
    func registerNibHeaderFooter(_ identifier: String, _ nibName: String? = nil) -> Self {
        base.register(UINib.init(nibName: nibName ?? identifier, bundle: Bundle.main),
                        forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func registerNameHeaderFooter(_ cellClass: UITableViewCell.Type) -> Self {
        base.register(cellClass, forHeaderFooterViewReuseIdentifier: cellClass.identifier)
        return self
    }
}

public extension UITableViewCell {
    static var identifier: String {
        return String(type(of: Self()).description()
        .split(separator: ".").last ?? "")
    }
}

public extension UITableView {
    func registerNibCell(_ identifier: String, _ nibName: String? = nil) {
        link.registerNibCell(identifier, nibName)
    }
    
    func registerNameCell(_ cellClass: UITableViewCell.Type) {
        link.registerNameCell(cellClass)
    }
    
    func registerNibHeaderFooter(_ identifier: String, _ nibName: String? = nil) {
        link.registerNibHeaderFooter(identifier, nibName)
    }
    
    func registerNameHeaderFooter(_ cellClass: UITableViewCell.Type) {
        link.registerNameHeaderFooter(cellClass)
    }
}
