//
//  Linker.swift
//  
//
//  Created by xiaoyao on 2017/12/6.
//  Copyright © 2017年 xiaoyao. All rights reserved.
//

import UIKit

//Linker 容器,链接器
public struct LinkerWarper<Base> {
    public let base : Base
    public init(_ base : Base){
        self.base = base
    }
}

//兼容切换协议
public protocol LinkerCompatible {
    
    /// Extended type
    associatedtype LinkerBase

    /// Linker extensions.
    static var link: LinkerWarper<LinkerBase>.Type { get set }

    /// Linker extensions.
    var link: LinkerWarper<LinkerBase> { get set }
}


public extension LinkerCompatible {
    
    /// linker extensions
    static var link : LinkerWarper<Self>.Type {
        get {
            return LinkerWarper<Self>.self
        }
        set {}
    }
    
    /// linker extensions
    var link: LinkerWarper<Self> {
        get {
            return LinkerWarper(self)
        }
        set {}
    }
}

extension NSObject: LinkerCompatible {}
