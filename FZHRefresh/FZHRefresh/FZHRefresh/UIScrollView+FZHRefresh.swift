//
//  UIScrollView+FZHRefresh.swift
//  FZHRefresh
//
//  Created by 冯志浩 on 16/10/24.
//  Copyright © 2016年 FZH. All rights reserved.
//

import Foundation
import UIKit
extension UIScrollView{
    var fzhHeader: FZHHeaderRefresh{
        set{
        
        }
        get{
           return FZHHeaderRefresh()
        }
    }
    var fzhFooter: FZHFooterRefresh{
        set{
            
        }
        get{
            return FZHFooterRefresh()
        }
    }
    
    
}
