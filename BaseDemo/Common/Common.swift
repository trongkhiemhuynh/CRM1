//
//  Common.swift
//  BaseDemo
//
//  Created by BASEBS on 8/20/20.
//  Copyright © 2020 BASEBS. All rights reserved.
//

import Foundation

enum TabMenu : String {
    case Dashboard
    case Profile
    case Ticket
    case More
}

public extension Notification.Name {
    static let TabbarName = Notification.Name("TabbarName") 
}
