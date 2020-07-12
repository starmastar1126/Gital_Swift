//
//  CAPSPageMenuConfiguration.swift
//  PageMenuConfigurationDemo
//
//  Created by Matthew York on 3/5/17.
//  Copyright © 2017 Aeron. All rights reserved.
//

import UIKit

public class CAPSPageMenuConfiguration {
    open var menuHeight : CGFloat = 48.0
    open var menuMargin : CGFloat = 0
    open var menuItemWidth : CGFloat = 111.0
    open var selectionIndicatorHeight : CGFloat = 1.0
    open var scrollAnimationDurationOnMenuItemTap : Int = 300 // Millisecons
    open var selectionIndicatorColor : UIColor = UIColor(red: 19/255, green: 130/255, blue: 235/255, alpha: 1)
    open var selectedMenuItemLabelColor : UIColor = UIColor(red: 19/255, green: 130/255, blue: 235/255, alpha: 1)
    open var unselectedMenuItemLabelColor : UIColor = UIColor.lightGray
    open var scrollMenuBackgroundColor : UIColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    open var viewBackgroundColor : UIColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    open var bottomMenuHairlineColor : UIColor = UIColor.white
    open var menuItemSeparatorColor : UIColor = UIColor.lightGray
    
    open var menuItemFont : UIFont = UIFont.systemFont(ofSize: 15.0)
    open var menuItemSeparatorPercentageHeight : CGFloat = 0.2
    open var menuItemSeparatorWidth : CGFloat = 0.5
    open var menuItemSeparatorRoundEdges : Bool = false
    
    open var addBottomMenuHairline : Bool = true
    open var menuItemWidthBasedOnTitleTextWidth : Bool = false
    open var titleTextSizeBasedOnMenuItemWidth : Bool = false
    open var useMenuLikeSegmentedControl : Bool = false
    open var centerMenuItems : Bool = false
    open var enableHorizontalBounce : Bool = true
    open var hideTopMenuBar : Bool = false
    
    public init() {
        
    }
}
