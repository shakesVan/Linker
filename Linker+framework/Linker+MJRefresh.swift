//
//  Linker+MJRefresh.swift
//  23
//
//  Created by edz on 2020/5/28.
//  Copyright © 2020 ddcx. All rights reserved.
//

import Foundation

#if canImport(MJRefresh)
import MJRefresh

/** 刷新用到的回调类型 */
public typealias XYRefreshComponentAction = MJRefreshComponentAction?

public extension LinkerWarper where Base : UIScrollView {
    
    @discardableResult
    func header(_ refreshingBlock: XYRefreshComponentAction) -> Self {
        guard let refreshingBlock = refreshingBlock else { return self }
        base.mj_header = XYRefreshNormalHeader(refreshingBlock: refreshingBlock)
        return self
    }
    
    @discardableResult
    func footer(_ refreshingBlock: XYRefreshComponentAction) -> Self {
        guard let refreshingBlock = refreshingBlock else { return self }
        base.mj_footer = XYRefreshAutoNormalFooter(refreshingBlock: refreshingBlock)
        return self
    }
    
    @discardableResult
    func header(_ value: MJRefreshHeader) -> Self {
        base.mj_header = value
        return self
    }
    
    @discardableResult
    func footer(_ value: MJRefreshFooter) -> Self {
        base.mj_footer = value
        return self
    }
    
     var header: MJRefreshHeader? {
        get { return base.mj_header }
        set { base.mj_header = newValue }
    }

    var footer: MJRefreshFooter? {
        get { return base.mj_footer }
        set { base.mj_footer = newValue }
    }
        
    func totalDataCount() -> Int {
        return base.mj_totalDataCount()
    }

    /** 提示没有更多的数据 */
    @discardableResult
    func endRefreshingWithNoMoreData(_ isHidden: Bool = true) -> Self {
        base.isHidden = isHidden
        footer?.endRefreshingWithNoMoreData()
        return self
    }
    /** 重置没有更多的数据（消除没有更多数据的状态） */
    @discardableResult
    func resetNoMoreData() -> Self {
        base.isHidden = false
        footer?.resetNoMoreData()
        return self
    }
}

public extension LinkerWarper where Base : MJRefreshComponent {
    /** 结束刷新状态 */
    @discardableResult
    func endRefreshing() -> Self {
        base.endRefreshing()
        return self
    }
    
    @discardableResult
    func hiddenRefresh(ishidden: Bool) -> Self {
        base.isHidden = ishidden
        return self
    }
}

public extension LinkerWarper where Base : MJRefreshFooter {
     
    /** 提示没有更多的数据 */
    @discardableResult
    func endRefreshingWithNoMoreData(_ isHidden: Bool = true) -> Self {
        base.isHidden = isHidden
        base.endRefreshingWithNoMoreData()
        return self
    }
    /** 重置没有更多的数据（消除没有更多数据的状态） */
    @discardableResult
    func resetNoMoreData() -> Self {
        base.isHidden = false
        base.resetNoMoreData()
        return self
    }
    
}


public class XYRefreshNormalHeader: MJRefreshNormalHeader {
    
    public override func prepare() {
        super.prepare()
        
        self.setTitle("下拉可以刷新", for: MJRefreshState.idle)
        self.setTitle("松开立即刷新", for: MJRefreshState.pulling)
        self.setTitle("正在刷新数据中...", for: MJRefreshState.refreshing)
        
        self.stateLabel?.font = UIFont.systemFont(ofSize: 12)
        self.stateLabel?.textColor = UIColor.hex("#999999")
        
        self.lastUpdatedTimeLabel?.font = UIFont.systemFont(ofSize: 12)
        self.lastUpdatedTimeLabel?.textColor = UIColor.hex("#999999")
        
    }
}


public class XYRefreshAutoNormalFooter: MJRefreshAutoNormalFooter {
    
    public override func prepare() {
        super.prepare()
        
        self.setTitle("点击或上拉加载更多", for: MJRefreshState.idle)
        self.setTitle("正在加载更多的数据...", for: MJRefreshState.refreshing)
        self.setTitle(" ", for: MJRefreshState.noMoreData)
        
        self.stateLabel?.font = UIFont.systemFont(ofSize: 12)
        self.stateLabel?.textColor = UIColor.hex("#999999")
    }
}
#endif
