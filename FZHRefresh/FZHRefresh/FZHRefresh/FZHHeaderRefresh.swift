//
//  FZHHeaderRefresh.swift
//  FZHRefresh
//
//  Created by 冯志浩 on 16/10/24.
//  Copyright © 2016年 FZH. All rights reserved.
//

import UIKit

class FZHHeaderRefresh: FZHComponents {
    //define callback block
    typealias FZHRefreshHeaderBlock = () -> Void
    var headerBlock: FZHRefreshHeaderBlock? = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        self.delay(2) {
//            if (self.headerBlock != nil) {
//               self.headerBlock!()
//            }
//        }
    }
    
    func headerViewRefresh(fzhHeaderRefresh: @escaping FZHRefreshHeaderBlock) -> Void {
        headerBlock = fzhHeaderRefresh
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func delay(_ timeInterval: TimeInterval, _ block: @escaping ()->Void) {
        let after = DispatchTime.now() + timeInterval
        DispatchQueue.main.asyncAfter(deadline: after, execute: block)
    }

}
