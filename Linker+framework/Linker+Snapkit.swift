//
//  Linker+Snapkit.swift
//  23
//
//  Created by edz on 2020/5/28.
//  Copyright © 2020 ddcx. All rights reserved.
//

import Foundation

#if canImport(SnapKit)
import SnapKit

public extension LinkerWarper where Base : UIView{
    
    @discardableResult
    func make(_ closure: (ConstraintMaker) -> Void) -> Self {
        base.snp.makeConstraints(closure)
        return self
    }
    
    @discardableResult
    func remake(_ closure: (_ make: ConstraintMaker) -> Void) -> Self {
        base.snp.remakeConstraints(closure)
        return self
    }
    
    @discardableResult
    func update(_ closure: (_ make: ConstraintMaker) -> Void) -> Self {
        base.snp.updateConstraints(closure)
        return self
    }
}
#endif
